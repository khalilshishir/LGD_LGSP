package lookUp



import org.junit.*
import grails.test.mixin.*

@TestFor(LookupController)
@Mock(Lookup)
class LookupControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/lookup/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.lookupInstanceList.size() == 0
        assert model.lookupInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.lookupInstance != null
    }

    void testSave() {
        controller.save()

        assert model.lookupInstance != null
        assert view == '/lookup/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/lookup/show/1'
        assert controller.flash.message != null
        assert Lookup.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/lookup/list'

        populateValidParams(params)
        def lookup = new Lookup(params)

        assert lookup.save() != null

        params.id = lookup.id

        def model = controller.show()

        assert model.lookupInstance == lookup
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/lookup/list'

        populateValidParams(params)
        def lookup = new Lookup(params)

        assert lookup.save() != null

        params.id = lookup.id

        def model = controller.edit()

        assert model.lookupInstance == lookup
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/lookup/list'

        response.reset()

        populateValidParams(params)
        def lookup = new Lookup(params)

        assert lookup.save() != null

        // test invalid parameters in update
        params.id = lookup.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/lookup/edit"
        assert model.lookupInstance != null

        lookup.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/lookup/show/$lookup.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        lookup.clearErrors()

        populateValidParams(params)
        params.id = lookup.id
        params.version = -1
        controller.update()

        assert view == "/lookup/edit"
        assert model.lookupInstance != null
        assert model.lookupInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/lookup/list'

        response.reset()

        populateValidParams(params)
        def lookup = new Lookup(params)

        assert lookup.save() != null
        assert Lookup.count() == 1

        params.id = lookup.id

        controller.delete()

        assert Lookup.count() == 0
        assert Lookup.get(lookup.id) == null
        assert response.redirectedUrl == '/lookup/list'
    }
}
