#
# Pending to change names variable definition, actually is not more clear
# Created by Xavisan
#
module "Modroute53" {
  source = "./ModRoute53"
  
  DestinationURL = "pepe.pepe.es"
  CNAMEtoapply = "sitexternal"
  DomainR53 = "test.com" 
  DomainRSet53 ="CNAME"

}
