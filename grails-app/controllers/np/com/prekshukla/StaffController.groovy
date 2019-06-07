package np.com.prekshukla



class StaffController {

    def staffService

    def index(){
        def staffList = staffService.staffList()
        println staffList.each{
            it -> println it
        }
        [staffList: staffList]
    }

    def create(){

    }

    def save(){
        staffService.saveStaff(params)
        flash.message = "Successfully Saved."
        redirect(action: 'index')
    }

    def update(){
        staffService.saveStaff(params)
        flash.message = "Successfully Updated."
        redirect(action: 'index')
    }

    def deleteStaff(){
        staffService.deleteStaff(params.long('id'))
        flash.message = "Successfully Deleted."
        redirect(action: 'index')
    }

    def edit(){
        Staff staff = staffService.getStaff(params.long('id'))
        [staff: staff]
    }

}
