module "juber_resource_group" {
  rource = "./tf-modules/tfm-rg"

  name = "rg-2"
  tenant_id = "494eaf4b-d806-4545-845a-2822790b6e90"
  subscription_id = "1fdb787d-b870-4864-b591-0f9e90138efb"
  client_id = "1bc2b2d0-c94e-4b8d-a08d-5273f668b45d"
  client_secret = "TKw8Q~SrEp8B2tlr3ZCt7G9V-3aVovrLE5R_abES"
  location = "Soth India"
  tags = {
    env = non-prod
    owner = juber
  }
  
}