package org.codehaus.groovy.grails.plugins.springsecurity.acl

import org.springframework.dao.DataIntegrityViolationException

class AclClassController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [aclClassInstanceList: AclClass.list(params), aclClassInstanceTotal: AclClass.count()]
    }

    def create() {
        [aclClassInstance: new AclClass(params)]
    }

    def save() {
        def aclClassInstance = new AclClass(params)
        if (!aclClassInstance.save(flush: true)) {
            render(view: "create", model: [aclClassInstance: aclClassInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'aclClass.label', default: 'AclClass'), aclClassInstance.id])
        redirect(action: "show", id: aclClassInstance.id)
    }

    def show(Long id) {
        def aclClassInstance = AclClass.get(id)
        if (!aclClassInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'aclClass.label', default: 'AclClass'), id])
            redirect(action: "list")
            return
        }

        [aclClassInstance: aclClassInstance]
    }

    def edit(Long id) {
        def aclClassInstance = AclClass.get(id)
        if (!aclClassInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'aclClass.label', default: 'AclClass'), id])
            redirect(action: "list")
            return
        }

        [aclClassInstance: aclClassInstance]
    }

    def update(Long id, Long version) {
        def aclClassInstance = AclClass.get(id)
        if (!aclClassInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'aclClass.label', default: 'AclClass'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (aclClassInstance.version > version) {
                aclClassInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'aclClass.label', default: 'AclClass')] as Object[],
                          "Another user has updated this AclClass while you were editing")
                render(view: "edit", model: [aclClassInstance: aclClassInstance])
                return
            }
        }

        aclClassInstance.properties = params

        if (!aclClassInstance.save(flush: true)) {
            render(view: "edit", model: [aclClassInstance: aclClassInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'aclClass.label', default: 'AclClass'), aclClassInstance.id])
        redirect(action: "show", id: aclClassInstance.id)
    }

    def delete(Long id) {
        def aclClassInstance = AclClass.get(id)
        if (!aclClassInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'aclClass.label', default: 'AclClass'), id])
            redirect(action: "list")
            return
        }

        try {
            aclClassInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'aclClass.label', default: 'AclClass'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'aclClass.label', default: 'AclClass'), id])
            redirect(action: "show", id: id)
        }
    }
}
