package np.com.prekshukla

class Address {


    String district
    String state
    String locality
    Integer wardno
    String tole
    boolean istemp

    static constraints = {
        wardno nullable: true
        tole nullable: true
    }
}
