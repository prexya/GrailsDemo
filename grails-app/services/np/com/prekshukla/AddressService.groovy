package np.com.prekshukla

import grails.gorm.transactions.Transactional

@Transactional
class AddressService {

    def serviceMethod() {

    }

    Address getAddress(Long id){
        return Address.findById(id)
    }

    def addressList(){
        params?.offset = params?.offset as Integer ?: 0
        params?.max = params?.max as Integer ?: 15
//        def addressList = Address.list()
        def addressList = Address.createCriteria().list(params){
        }

        return addressList
    }

    def  saveAddress(params){
        for (int i=1; i<100; i++) {
            Address address = getAddress(params.long('id'))
            if (!address) {
                address = new Address()
            }
            address.properties = params
            address.wardno = address.wardno + i
            address.save(flush: true, failOnError: true)

        }
    }

    def deleteAddress(Long id){
        Address address = getAddress(id)
        address.delete(flush: true, failOnError: true)
    }

}
