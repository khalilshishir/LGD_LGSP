package access_control



import org.junit.*
import grails.test.mixin.*

@TestFor(Access_Control_MenuController)
@Mock(Access_Control_Menu)
class Access_Control_MenuControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/access_Control_Menu/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.access_Control_MenuInstanceList.size() == 0
        assert model.access_Control_MenuInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.access_Control_MenuInstance != null
    }

    void testSave() {
        controller.save()

        assert model.access_Control_MenuInstance != null
        assert view == '/access_Control_Menu/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/access_Control_Menu/show/1'
        assert controller.flash.message != null
        assert Access_Control_Menu.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/access_Control_Menu/list'

        populateValidParams(params)
        def access_Control_Menu = new Access_Control_Menu(params)

        assert access_Control_Menu.save() != null

        params.id = access_Control_Menu.id

        def model = controller.show()

        assert model.access_Control_MenuInstance == access_Control_Menu
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/access_Control_Menu/list'

        populateValidParams(params)
        def access_Control_Menu = new Access_Control_Menu(params)

        assert access_Control_Menu.save() != null

        params.id = access_Control_Menu.id

        def model = controller.edit()

        assert model.access_Control_MenuInstance == access_Control_Menu
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/access_Control_Menu/list'

        response.reset()

        populateValidParams(params)
        def access_Control_Menu = new Access_Control_Menu(params)

        assert access_Control_Menu.save() != null

        // test invalid parameters in update
        params.id = access_Control_Menu.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/access_Control_Menu/edit"
        assert model.access_Control_MenuInstance != null

        access_Control_Menu.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/access_Control_Menu/show/$access_Control_Menu.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        access_Control_Menu.clearErrors()

        populateValidParams(params)
        params.id = access_Control_Menu.id
        params.version = -1
        controller.update()

        assert view == "/access_Control_Menu/edit"
        assert model.access_Control_MenuInstance != null
        assert model.access_Control_MenuInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/access_Control_Menu/list'

        response.reset()

        populateValidParams(params)
        def access_Control_Menu = new Access_Control_Menu(params)

        assert access_Control_Menu.save() != null
        assert Access_Control_Menu.count() == 1

        params.id = access_Control_Menu.id

        controller.delete()

        assert Access_Control_Menu.count() == 0
        assert Access_Control_Menu.get(access_Control_Menu.id) == null
        assert response.redirectedUrl == '/access_Control_Menu/list'
    }
}
