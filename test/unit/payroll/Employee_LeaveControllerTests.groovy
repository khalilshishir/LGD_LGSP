package payroll



import org.junit.*
import grails.test.mixin.*

@TestFor(Employee_LeaveController)
@Mock(Employee_Leave)
class Employee_LeaveControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/employee_Leave/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.employee_LeaveInstanceList.size() == 0
        assert model.employee_LeaveInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.employee_LeaveInstance != null
    }

    void testSave() {
        controller.save()

        assert model.employee_LeaveInstance != null
        assert view == '/employee_Leave/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/employee_Leave/show/1'
        assert controller.flash.message != null
        assert Employee_Leave.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/employee_Leave/list'

        populateValidParams(params)
        def employee_Leave = new Employee_Leave(params)

        assert employee_Leave.save() != null

        params.id = employee_Leave.id

        def model = controller.show()

        assert model.employee_LeaveInstance == employee_Leave
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/employee_Leave/list'

        populateValidParams(params)
        def employee_Leave = new Employee_Leave(params)

        assert employee_Leave.save() != null

        params.id = employee_Leave.id

        def model = controller.edit()

        assert model.employee_LeaveInstance == employee_Leave
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/employee_Leave/list'

        response.reset()

        populateValidParams(params)
        def employee_Leave = new Employee_Leave(params)

        assert employee_Leave.save() != null

        // test invalid parameters in update
        params.id = employee_Leave.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/employee_Leave/edit"
        assert model.employee_LeaveInstance != null

        employee_Leave.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/employee_Leave/show/$employee_Leave.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        employee_Leave.clearErrors()

        populateValidParams(params)
        params.id = employee_Leave.id
        params.version = -1
        controller.update()

        assert view == "/employee_Leave/edit"
        assert model.employee_LeaveInstance != null
        assert model.employee_LeaveInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/employee_Leave/list'

        response.reset()

        populateValidParams(params)
        def employee_Leave = new Employee_Leave(params)

        assert employee_Leave.save() != null
        assert Employee_Leave.count() == 1

        params.id = employee_Leave.id

        controller.delete()

        assert Employee_Leave.count() == 0
        assert Employee_Leave.get(employee_Leave.id) == null
        assert response.redirectedUrl == '/employee_Leave/list'
    }
}
