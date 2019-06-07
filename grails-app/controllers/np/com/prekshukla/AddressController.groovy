package np.com.prekshukla

class AddressController {

    def addressService

    def index() {
        def addressList = addressService.addressList()
        println addressList.each{
            it -> println it
        }
        [addressList : addressList, totalCount: addressList?.totalCount]
    }

    def addNew(){

    }


    def save(){
            addressService.saveAddress(params)
            flash.message = "Successfully Saved."
            redirect(action: 'index')
    }

    def update(){
        addressService.saveAddress(params)
        flash.message = "Successfully Updated."
        redirect(action: 'index')
    }

    def deleteAddress(){
        addressService.deleteAddress(params.long('id'))
        redirect(action: 'index')
    }

    def edit(){
        Address address = addressService.getAddress(params.long('id'))
        [address: address]
    }


}
