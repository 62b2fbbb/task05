resource_groups = {
  rg1 = {
    name     = "cmaz-5mhifrjl-mod5-rg-01"
    location = "East US"
  }
  rg2 = {
    name     = "cmaz-5mhifrjl-mod5-rg-02"
    location = "West Europe"
  }

  rg3 = {
    name     = "cmaz-5mhifrjl-mod5-rg-03"
    location = "Central US"
  }
}

asp = {
  asp1 = {
    name       = "cmaz-5mhifrjl-mod5-asp-01"
    sku        = "S1"
    capacity   = 2
    linked_rg  = "rg1"
    linked_asp = "asp1"
  }

  asp2 = {
    name       = "cmaz-5mhifrjl-mod5-asp-02"
    sku        = "S1"
    capacity   = 1
    linked_rg  = "rg2"
    linked_asp = "asp2"
  }
}

app_services = {
  site1 = {
    name       = "cmaz-5mhifrjl-mod5-app-01"
    linked_rg  = "rg1"
    linked_asp = "asp1"
  }
  site2 = {
    name       = "cmaz-5mhifrjl-mod5-app-02"
    linked_rg  = "rg2"
    linked_asp = "asp2"
  }
}

tm = {
  name           = "cmaz-5mhifrjl-mod5-traf"
  routing_method = "Performance"
}

student_email = "zakhar_saprun@epam.com"

tags = {
  Creator = "zakhar_saprun@epam.com"
}


allow_ip_rule = "allow-ip"
allow_tm_rule = "allow-tm"

vert_ip = "18.153.146.156"