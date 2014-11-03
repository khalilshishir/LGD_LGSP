package payroll

import org.springframework.dao.DataIntegrityViolationException
import java.text.SimpleDateFormat;

class EmployeeController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        /*params.max = Math.min(max ?: 10, 100)
        [employeeInstanceList: Employee.list(params), employeeInstanceTotal: Employee.count()]*/
        def employeeInstanceList=Employee.findAll()
        render(view: 'list',model: [employeeInstanceList:employeeInstanceList])
    }

    def create() {
        [employeeInstance: new Employee(params)]
    }

    def save() {
        /*image processing start*/
        def file = request.getFile("pic_");
        if (file && (file.getSize() > 0)) {

            def fileName = file.getOriginalFilename()
            def ext = fileName.substring(fileName.lastIndexOf('.'))
            def docFileTitle = UUID.randomUUID().toString()
            docFileTitle = docFileTitle + ext
            params.picFileTitle = docFileTitle
            String filePath = grailsAttributes.getApplicationContext().getResource("images/repository/Employee/PIC_").getFile().toString() + "\\" + docFileTitle
            file.transferTo(new File(filePath))
            params.pic_url_ = docFileTitle
        }
        /*image processing end*/
        def employeeInstance = new Employee(params)
        if (!employeeInstance.save(flush: true)) {
            render(view: "create", model: [employeeInstance: employeeInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'employee.label', default: 'Employee'), employeeInstance.id])
        redirect(action: "show", id: employeeInstance.id)
    }

    def show(Long id) {
        def employeeInstance = Employee.get(id)
        if (!employeeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'employee.label', default: 'Employee'), id])
            redirect(action: "list")
            return
        }

        [employeeInstance: employeeInstance]
    }

    def edit(Long id) {
        def employeeInstance = Employee.get(id)
        if (!employeeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'employee.label', default: 'Employee'), id])
            redirect(action: "list")
            return
        }

        [employeeInstance: employeeInstance]
    }

    def update(Long id, Long version) {
        /*image processing start*/
        def file = request.getFile("pic_");
        if (file && (file.getSize() > 0)) {

            def fileName = file.getOriginalFilename()
            def ext = fileName.substring(fileName.lastIndexOf('.'))
            def docFileTitle = UUID.randomUUID().toString()
            docFileTitle = docFileTitle + ext
            params.picFileTitle = docFileTitle
            String filePath = grailsAttributes.getApplicationContext().getResource("images/repository/Employee/PIC_").getFile().toString() + "\\" + docFileTitle
            file.transferTo(new File(filePath))
            params.pic_url_ = docFileTitle
        }
        /*image processing end*/
        def employeeInstance = Employee.get(id)
        if (!employeeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'employee.label', default: 'Employee'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (employeeInstance.version > version) {
                employeeInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'employee.label', default: 'Employee')] as Object[],
                        "Another user has updated this Employee while you were editing")
                render(view: "edit", model: [employeeInstance: employeeInstance])
                return
            }
        }
        /*hye edited for dates*/
        Date joiningDate = new SimpleDateFormat("MM/dd/yyyy").parse(params.JOINING_DATE)
        employeeInstance.setJOINING_DATE(joiningDate)
        Date dateOfBirth = new SimpleDateFormat("MM/dd/yyyy").parse(params.DATE_OF_BIRTH)
        employeeInstance.setDATE_OF_BIRTH(dateOfBirth)
        Date confirmationDate = new SimpleDateFormat("MM/dd/yyyy").parse(params.CONFIRMATION_DATE)
        employeeInstance.setCONFIRMATION_DATE(confirmationDate)
        Date serviceEndDate = new SimpleDateFormat("MM/dd/yyyy").parse(params.SERVICE_END_DATE)
        employeeInstance.setCONFIRMATION_DATE(serviceEndDate)
        Date lastIncrementDate = new SimpleDateFormat("MM/dd/yyyy").parse(params.LAST_INCREMENT_DATE)
        employeeInstance.setCONFIRMATION_DATE(lastIncrementDate)
        Date nextIncrementDate = new SimpleDateFormat("MM/dd/yyyy").parse(params.NEXT_INCREMENT_DATE)
        employeeInstance.setCONFIRMATION_DATE(nextIncrementDate)
        /*hye edited for dates end*/

        employeeInstance.properties = params
        if (!employeeInstance.save(flush: true)) {
            render(view: "edit", model: [employeeInstance: employeeInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'employee.label', default: 'Employee'), employeeInstance.id])
        redirect(action: "show", id: employeeInstance.id)
    }

    def delete(Long id) {
        def employeeInstance = Employee.get(id)
        if (!employeeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'employee.label', default: 'Employee'), id])
            redirect(action: "list")
            return
        }

        try {
            employeeInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'employee.label', default: 'Employee'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'employee.label', default: 'Employee'), id])
            redirect(action: "show", id: id)
        }
    }
}
