package procurement.up.directprocurement



import org.junit.*
import grails.test.mixin.*

@TestFor(UpDirectProcController)
@Mock(UpDirectProc)
class UpDirectProcControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/upDirectProc/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.upDirectProcInstanceList.size() == 0
        assert model.upDirectProcInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.upDirectProcInstance != null
    }

    void testSave() {
        controller.save()

        assert model.upDirectProcInstance != null
        assert view == '/upDirectProc/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/upDirectProc/show/1'
        assert controller.flash.message != null
        assert UpDirectProc.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/upDirectProc/list'

        populateValidParams(params)
        def upDirectProc = new UpDirectProc(params)

        assert upDirectProc.save() != null

        params.id = upDirectProc.id

        def model = controller.show()

        assert model.upDirectProcInstance == upDirectProc
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/upDirectProc/list'

        populateValidParams(params)
        def upDirectProc = new UpDirectProc(params)

        assert upDirectProc.save() != null

        params.id = upDirectProc.id

        def model = controller.edit()

        assert model.upDirectProcInstance == upDirectProc
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/upDirectProc/list'

        response.reset()

        populateValidParams(params)
        def upDirectProc = new UpDirectProc(params)

        assert upDirectProc.save() != null

        // test invalid parameters in update
        params.id = upDirectProc.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/upDirectProc/edit"
        assert model.upDirectProcInstance != null

        upDirectProc.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/upDirectProc/show/$upDirectProc.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        upDirectProc.clearErrors()

        populateValidParams(params)
        params.id = upDirectProc.id
        params.version = -1
        controller.update()

        assert view == "/upDirectProc/edit"
        assert model.upDirectProcInstance != null
        assert model.upDirectProcInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/upDirectProc/list'

        response.reset()

        populateValidParams(params)
        def upDirectProc = new UpDirectProc(params)

        assert upDirectProc.save() != null
        assert UpDirectProc.count() == 1

        params.id = upDirectProc.id

        controller.delete()

        assert UpDirectProc.count() == 0
        assert UpDirectProc.get(upDirectProc.id) == null
        assert response.redirectedUrl == '/upDirectProc/list'
    }
}
