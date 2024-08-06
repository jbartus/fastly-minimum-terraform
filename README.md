# minimum terraform edgewaf

## what
a bare minimum syntax example for using terraform to put a fastly service in front of a site

the service is configured to pass all traffic (not cache)

## howto
```
git clone https://github.com/jbartus/fastly-minimum-terraform.git
cd fastly-minimum-terraform/
terraform init
export FASTLY_API_KEY=`fastly profile token` # assuming you have the fastly cli working
terraform apply
```