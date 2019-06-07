package np.com.prekshukla

import grails.gorm.services.Service

@Service(Staff)
interface StaffServiceBackup {

    Staff get(Serializable id)

    List<Staff> list(Map args)

    Long count()

    void delete(Serializable id)

    Staff save(Staff staff)

}