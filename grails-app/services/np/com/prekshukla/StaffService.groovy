package np.com.prekshukla

import grails.gorm.transactions.Transactional

@Transactional
class StaffService {

    def serviceMethod() {

    }

    Staff getStaff(Long id){
        return Staff.findById(id)
    }


    def staffList(){
        def staffList = Staff.list()
        return staffList
    }

    def saveStaff(params){
        Staff staff = getStaff(params.long('id'))
        if(!staff){
            staff = new Staff()
        }
        staff.properties = params
        staff.save(flush: true, failOnError: true)
    }

    def deleteStaff(Long id){


        Staff staff = getStaff(id)
        staff.delete(flush: true, failOnError: true)
    }
}
