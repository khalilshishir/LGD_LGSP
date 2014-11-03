package procurement.up.directprocurement



import org.junit.*
import grails.test.mixin.*

@TestFor(UpDirectProcurementController)
@Mock(UpDirectProcurement)
class UpDirectProcurementControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/upDirectProcurement/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.upDirectProcurementInstanceList.size() == 0
        assert model.upDirectProcurementInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.upDirectProcurementInstance != null
    }

    void testSave() {
        controller.save()

        assert model.upDirectProcurementInstance != null
        assert view == '/upDirectProcurement/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/upDirectProcurement/show/1'
        assert controller.flash.message != null
        assert UpDirectProcurement.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/upDirectProcurement/list'

        populateValidParams(params)
        def upDirectProcurement = new UpDirectProcurement(params)

        assert upDirectProcurement.save() != null

        params.id = upDirectProcurement.id

        def model = controller.show()

        assert model.upDirectProcurementInstance == upDirectProcurement
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/upDirectProcurement/list'

        populateValidParams(params)
        def upDirectProcurement = new UpDirectProcurement(params)

        assert upDirectProcurement.save() != null

        params.id = upDirectProcurement.id

        def model = controller.edit()

        assert model.upDirectProcurementInstance == upDirectProcurement
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/upDirectProcurement/list'

        response.reset()

        populateValidParams(params)
        def upDirectProcurement = new UpDirectProcurement(params)

        assert upDirectProcurement.save() != null

        // test invalid parameters in update
        params.id = upDirectProcurement.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/upDirectProcurement/edit"
        assert model.upDirectProcurementInstance != null

        upDirectProcurement.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/upDirectProcurement/show/$upDirectProcurement.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        upDirectProcurement.clearErrors()

        populateValidParams(params)
        params.id = upDirectProcurement.id
        params.version = -1
        controller.update()

        assert view == "/upDirectProcurement/edit"
        assert model.upDirectProcurementInstance != null
        assert model.upDirectProcurementInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/upDirectProcurement/list'

        response.reset()

        populateValidParams(params)
        def upDirectProcurement = new UpDirectProcurement(params)

        assert upDirectProcurement.save() != null
        assert UpDirectProcurement.count() == 1

        params.id = upDirectProcurement.id

        controller.delete()

        assert UpDirectProcurement.count() == 0
        assert UpDirectProcurement.get(upDirectProcurement.id) == null
        assert response.redirectedUrl == '/upDirectProcurement/list'
    }
}
