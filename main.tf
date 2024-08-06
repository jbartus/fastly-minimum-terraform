terraform {
  required_providers {
    fastly = {
      source = "fastly/fastly"
    }
  }
}

resource "fastly_service_vcl" "min-tf" {
  name = "minimum terraform"

  domain {
    name = "min-tf.global.ssl.fastly.net"
  }

  backend {
    name    = "origin"
    address = "httpbin.org"
  }

  condition {
    name      = "all_requests"
    statement = "true"
    type      = "REQUEST"
  }

  request_setting {
    name              = "pass_all"
    action            = "pass"
    request_condition = "all_requests"
  }

  force_destroy = true
}