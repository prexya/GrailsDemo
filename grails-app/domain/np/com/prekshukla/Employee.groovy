package np.com.prekshukla

class Employee {

    String firstname
    String lastname
    int age
    String address
    String department
    String designation

    static constraints = {
        firstname nullable: true, blank:true
        lastname nullable: true, blank:true
        age nullable: true, blank: true
        address nullable: true, blank:true
        department nullable: true, blank: true
        designation nullable: true, blank: true
    }
}
