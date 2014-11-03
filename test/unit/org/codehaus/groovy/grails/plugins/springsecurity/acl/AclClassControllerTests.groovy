package org.codehaus.groovy.grails.plugins.springsecurity.acl



import org.junit.*
import grails.test.mixin.*

@TestFor(AclClassController)
@Mock(AclClass)
class AclClassControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/aclClass/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.aclClassInstanceList.size() == 0
        assert model.aclClassInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.aclClassInstance != null
    }

    void testSave() {
        controller.save()

        assert model.aclClassInstance != null
        assert view == '/aclClass/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/aclClass/show/1'
        assert controller.flash.message != null
        assert AclClass.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/aclClass/list'

        populateValidParams(params)
        def aclClass = new AclClass(params)

        assert aclClass.save() != null

        params.id = aclClass.id

        def model = controller.show()

        assert model.aclClassInstance == aclClass
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/aclClass/list'

        populateValidParams(params)
        def aclClass = new AclClass(params)

        assert aclClass.save() != null

        params.id = aclClass.id

        def model = controller.edit()

        assert model.aclClassInstance == aclClass
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/aclClass/list'

        response.reset()

        populateValidParams(params)
        def aclClass = new AclClass(params)

        assert aclClass.save() != null

        // test invalid parameters in update
        params.id = aclClass.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/aclClass/edit"
        assert model.aclClassInstance != null

        aclClass.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/aclClass/show/$aclClass.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        aclClass.clearErrors()

        populateValidParams(params)
        params.id = aclClass.id
        params.version = -1
        controller.update()

        assert view == "/aclClass/edit"
        assert model.aclClassInstance != null
        assert model.aclClassInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/aclClass/list'

        response.reset()

        populateValidParams(params)
        def aclClass = new AclClass(params)

        assert aclClass.save() != null
        assert AclClass.count() == 1

        params.id = aclClass.id

        controller.delete()

        assert AclClass.count() == 0
        assert AclClass.get(aclClass.id) == null
        assert response.redirectedUrl == '/aclClass/list'
    }
}
