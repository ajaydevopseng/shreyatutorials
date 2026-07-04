config = {
  vmconfig = {
    "rgname"                          = "testrg"
    "location"                        = "centralindia"
    "storageaccname"                  = "teststoreacc"
    "accounttier"                     = "Standard"
    "replitype"                       = "LRS"
    "vnet_name"                       = "testvnet"
    "address_space"                   = "192.168.0.0/24"
    "subnet_name"                     = "testsubnet"
    "subnet_space"                    = "192.168.0.0/28"
    "vm_name"                         = "testvm"
    "vm_username"                     = "testuser"
    "vm_pass"                         = "Test@1234"
    "vm_size"                         = "Standard_DS1_v2"
    "vm_image"                        = "UbuntuLTS"
    "vm_os_disk_name"                 = "testosdisk"
    "vm_os_disk_caching"              = "ReadWrite"
    "vm_os_disk_storage_account_type" = "Standard_LRS"
  }
}
