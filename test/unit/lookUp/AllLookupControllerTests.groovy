package lookUp



import org.junit.*
import grails.test.mixin.*

@TestFor(AllLookupController)
@Mock(AllLookup)
class AllLookupControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/allLookup/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.allLookupInstanceList.size() == 0
        assert model.allLookupInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.allLookupInstance != null
    }

    void testSave() {
        controller.save()

        assert model.allLookupInstance != null
        assert view == '/allLookup/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/allLookup/show/1'
        assert controller.flash.message != null
        assert AllLookup.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/allLookup/list'

        populateValidParams(params)
        def allLookup = new AllLookup(params)

        assert allLookup.save() != null

        params.id = allLookup.id

        def model = controller.show()

        assert model.allLookupInstance == allLookup
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/allLookup/list'

        populateValidParams(params)
        def allLookup = new AllLookup(params)

        assert allLookup.save() != null

        params.id = allLookup.id

        def model = controller.edit()

        assert model.allLookupInstance == allLookup
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/allLookup/list'

        response.reset()

        populateValidParams(params)
        def allLookup = new AllLookup(params)

        assert allLookup.save() != null

        // test invalid parameters in update
        params.id = allLookup.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/allLookup/edit"
        assert model.allLookupInstance != null

        allLookup.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/allLookup/show/$allLookup.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        allLookup.clearErrors()

        populateValidParams(params)
        params.id = allLookup.id
        params.version = -1
        controller.update()

        assert view == "/allLookup/edit"
        assert model.allLookupInstance != null
        assert model.allLookupInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/allLookup/list'

        response.reset()

        populateValidParams(params)
        def allLookup = new AllLookup(params)

        assert allLookup.save() != null
        assert AllLookup.count() == 1

        params.id = allLookup.id

        controller.delete()

        assert AllLookup.count() == 0
        assert AllLookup.get(allLookup.id) == null
        assert response.redirectedUrl == '/allLookup/list'
    }
}
