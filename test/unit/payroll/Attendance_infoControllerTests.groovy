package payroll



import org.junit.*
import grails.test.mixin.*

@TestFor(Attendance_InfoController)
@Mock(Attendance_Info)
class Attendance_InfoControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/attendance_Info/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.attendance_InfoInstanceList.size() == 0
        assert model.attendance_InfoInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.attendance_InfoInstance != null
    }

    void testSave() {
        controller.save()

        assert model.attendance_InfoInstance != null
        assert view == '/attendance_Info/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/attendance_Info/show/1'
        assert controller.flash.message != null
        assert Attendance_Info.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/attendance_Info/list'

        populateValidParams(params)
        def attendance_Info = new Attendance_Info(params)

        assert attendance_Info.save() != null

        params.id = attendance_Info.id

        def model = controller.show()

        assert model.attendance_InfoInstance == attendance_Info
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/attendance_Info/list'

        populateValidParams(params)
        def attendance_Info = new Attendance_Info(params)

        assert attendance_Info.save() != null

        params.id = attendance_Info.id

        def model = controller.edit()

        assert model.attendance_InfoInstance == attendance_Info
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/attendance_Info/list'

        response.reset()

        populateValidParams(params)
        def attendance_Info = new Attendance_Info(params)

        assert attendance_Info.save() != null

        // test invalid parameters in update
        params.id = attendance_Info.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/attendance_Info/edit"
        assert model.attendance_InfoInstance != null

        attendance_Info.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/attendance_Info/show/$attendance_Info.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        attendance_Info.clearErrors()

        populateValidParams(params)
        params.id = attendance_Info.id
        params.version = -1
        controller.update()

        assert view == "/attendance_Info/edit"
        assert model.attendance_InfoInstance != null
        assert model.attendance_InfoInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/attendance_Info/list'

        response.reset()

        populateValidParams(params)
        def attendance_Info = new Attendance_Info(params)

        assert attendance_Info.save() != null
        assert Attendance_Info.count() == 1

        params.id = attendance_Info.id

        controller.delete()

        assert Attendance_Info.count() == 0
        assert Attendance_Info.get(attendance_Info.id) == null
        assert response.redirectedUrl == '/attendance_Info/list'
    }
}
