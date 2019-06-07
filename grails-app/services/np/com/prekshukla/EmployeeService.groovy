package np.com.prekshukla

import grails.gorm.transactions.Transactional

@Transactional
class EmployeeService {

    def serviceMethod() {

    }

    Employee getEmployee(Long id){
        return Employee.findById(id)
    }

    def employeeList(){
        def employeeList = Employee.list()
        return employeeList
    }

    def  saveEmployee(params){
        Employee employee = getEmployee(params.long('id'))
        if(!employee){
            employee = new Employee()
        }
        employee.properties = params
        employee.save(flush: true, failOnError: true)
    }

    def deleteEmployee(Long id){
        Employee employee = getEmployee(id)
        employee.delete(flush: true, failOnError: true)
    }

}
