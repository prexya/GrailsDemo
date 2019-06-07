package np.com.prekshukla

class EmployeeController {

//    EmployeeService employeeService
    def employeeService

    def index() {
    }

    def employeeList(){
        def employeeList = employeeService.employeeList()
        println employeeList.each{
            it -> println it
        }
        [employeeList : employeeList]
    }

    def addEmployee(){

    }


    def save(){
        employeeService.saveEmployee(params)

//        def employee = new Employee()
//        employee.properties = params
//        employee.save(flush: true, failOnError: true)

        flash.message = "Successfully Saved."
        redirect(action: 'employeeList')
    }

    def update(){
        employeeService.saveEmployee(params)
        flash.message = "Successfully Updated."
        redirect(action: 'employeeList')
    }

    def deleteEmployee(){
        employeeService.deleteEmployee(params.long('id'))
        redirect(action: 'employeeList')
    }

    def editEmployee(){
        Employee employee = employeeService.getEmployee(params.long('id'))
        [employee: employee]
    }

}
