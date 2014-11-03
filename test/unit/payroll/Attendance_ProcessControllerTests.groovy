package payroll



import org.junit.*
import grails.test.mixin.*

@TestFor(Attendance_ProcessController)
@Mock(Attendance_Process)
class Attendance_ProcessControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/attendance_Process/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.attendance_ProcessInstanceList.size() == 0
        assert model.attendance_ProcessInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.attendance_ProcessInstance != null
    }

    void testSave() {
        controller.save()

        assert model.attendance_ProcessInstance != null
        assert view == '/attendance_Process/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/attendance_Process/show/1'
        assert controller.flash.message != null
        assert Attendance_Process.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/attendance_Process/list'

        populateValidParams(params)
        def attendance_Process = new Attendance_Process(params)

        assert attendance_Process.save() != null

        params.id = attendance_Process.id

        def model = controller.show()

        assert model.attendance_ProcessInstance == attendance_Process
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/attendance_Process/list'

        populateValidParams(params)
        def attendance_Process = new Attendance_Process(params)

        assert attendance_Process.save() != null

        params.id = attendance_Process.id

        def model = controller.edit()

        assert model.attendance_ProcessInstance == attendance_Process
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/attendance_Process/list'

        response.reset()

        populateValidParams(params)
        def attendance_Process = new Attendance_Process(params)

        assert attendance_Process.save() != null

        // test invalid parameters in update
        params.id = attendance_Process.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/attendance_Process/edit"
        assert model.attendance_ProcessInstance != null

        attendance_Process.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/attendance_Process/show/$attendance_Process.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        attendance_Process.clearErrors()

        populateValidParams(params)
        params.id = attendance_Process.id
        params.version = -1
        controller.update()

        assert view == "/attendance_Process/edit"
        assert model.attendance_ProcessInstance != null
        assert model.attendance_ProcessInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/attendance_Process/list'

        response.reset()

        populateValidParams(params)
        def attendance_Process = new Attendance_Process(params)

        assert attendance_Process.save() != null
        assert Attendance_Process.count() == 1

        params.id = attendance_Process.id

        controller.delete()

        assert Attendance_Process.count() == 0
        assert Attendance_Process.get(attendance_Process.id) == null
        assert response.redirectedUrl == '/attendance_Process/list'
    }
}
