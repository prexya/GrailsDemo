package np.com.prekshukla

class Staff {

    String staffid
    String firstname
    String middlename
    String lastname
    String department
    Integer experience
    String tier
    String shift
    String address

    static constraints = {
        middlename nullable: true
        experience nullable: true
    }
}
