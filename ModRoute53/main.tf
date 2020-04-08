#-----------------------------------------------------------------
# Module for Route 53 
# Create a Domain entrys
#
# DestinationURL - Amazon AWS Origin FQDN internal site or other external site
# CNAMEtoapply - Amazon AWS CNAME to apply in the Route53
# DomainR53 - Amazon AWS Default Domain created in the Route53, default value=test.com
# Value DomainRSet53 [references]:
#---------------------------------
#       A     - Ip v4 address
#       CNAME - Cannonical Name
#       MX    - Mail Exchange
#       AAAA  - Ip v6 address
#       TXT   - Text
#       PTR   - Pointer
#       SRV   - Service Locator
#       SPF   - Server Policy Framework
#       NAPTR - Name Authority Pointer
#       CAA   - Certification Authority Autorization
#       NS    - Name Server
#       SOA   - Start of Authority
# ------------------------------------------------------------------
resource "aws_route53_record" "URL_Modification" {
  zone_id = "${var.DomainR53}"
  name    = "${var.CNAMEtoapply}"
  type    = "${var.DomainRSet53}"
  ttl     = "300"
  records = ["${var.DestinationURL}"]
}
