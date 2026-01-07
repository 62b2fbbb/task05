resource_groups = {
  rg1 = {
    name     = "rg-zahar-useast-lab"
    location = "East US"
  }
  rg2 = {
    name     = "rg-zahar-westeurope-lab"
    location = "West Europe"
  }

  rg3 = {
    name     = "rg-zahar-centralus-tm"
    location = "Central US"
  }
}

asp = {
  asp1 = {
    name       = "asp-zahar-use-001"
    sku        = "S1"
    capacity   = 1
    linked_rg  = "rg1"
    linked_asp = "asp1"
  }

  asp2 = {
    name       = "asp-zahar-westeurope"
    sku        = "S1"
    capacity   = 1
    linked_rg  = "rg2"
    linked_asp = "asp2"
  }
}

app_services = {
  site1 = {
    name       = "webapp-zahar-useast-001"
    linked_rg  = "rg1"
    linked_asp = "asp1"
  }
  site2 = {
    name       = "webapp-zahar-westeurope-001"
    linked_rg  = "rg2"
    linked_asp = "asp2"
  }
}

tm = {
  name           = "tm-zahar-global-DNS"
  routing_method = "Performance"
}

student_email = "zakhar_saprun@epam.com"

tags = {
  Environment = "Lab"
  Task        = "Task05"
  Creator     = "zakhar_saprun@epam.com"
}