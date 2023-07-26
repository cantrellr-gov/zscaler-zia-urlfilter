# ZIA URL Categories
resource "zia_url_categories" "efa_urlallowlist" {
  super_category      = "USER_DEFINED"
  configured_name     = "${local.efa_label_name} Allowlist"
  description         = "${local.efa_categoryallow_desc}"
  #keywords            = ["null"]
  custom_category     = true
  type                = "URL_CATEGORY"
  /*scopes {
    type = "LOCATION"
    scope_entities {
      id = [ data.zpa_location_management.location.id ]
    }
    scope_group_member_entities {
      id = [ data.zia_group_management.engineering.id ]
    }
  }*/
  urls = local.efa_categoryallow_urls
}
  output "efa_urlallowlist_id" {
    value = zia_url_categories.efa_urlallowlist.id
  }


resource "zia_url_categories" "efa_urlblocklist" {
  super_category      = "USER_DEFINED"
  configured_name     = "${local.efa_label_name} Blocklist"
  description         = "${local.efa_categoryblock_desc}"
  #keywords            = ["null"]
  custom_category     = true
  type                = "URL_CATEGORY"
  /*scopes {
    type = "LOCATION"
    scope_entities {
      id = [ data.zpa_location_management.location.id ]
    }
    scope_group_member_entities {
      id = [ data.zia_group_management.engineering.id ]
    }
  }*/
  urls = local.efa_categoryblock_urls
}
  output "efa_urlblocklist_id" {
    value = zia_url_categories.efa_urlblocklist.id
  }


resource "zia_url_categories" "efa_sslbypass" {
  super_category      = "USER_DEFINED"
  configured_name     = "${local.efa_label_name} SSL Bypass"
  description         = "${local.efa_sslbypass_desc}"
  #keywords            = ["null"]
  custom_category     = true
  type                = "URL_CATEGORY"
  /*scopes {
    type = "LOCATION"
    scope_entities {
      id = [ data.zpa_location_management.location.id ]
    }
    scope_group_member_entities {
      id = [ data.zia_group_management.engineering.id ]
    }
  }*/
  urls = local.efa_sslbypass_urls
}
  output "efa_sslbypass_id" {
    value = zia_url_categories.efa_sslbypass.id
  }


resource "zia_url_categories" "efa_macossslbypass" {
  super_category      = "USER_DEFINED"
  configured_name     = "${local.efa_label_name} macOS SSL Bypass"
  description         = "${local.efa_macossslbypass_desc}"
  #keywords            = ["null"]
  custom_category     = true
  type                = "URL_CATEGORY"
  /*scopes {
    type = "LOCATION"
    scope_entities {
      id = [ data.zpa_location_management.location.id ]
    }
    scope_group_member_entities {
      id = [ data.zia_group_management.engineering.id ]
    }
  }*/
  urls = local.efa_macossslbypass_urls
  depends_on = [zia_url_categories.efa_sslbypass]
}
  output "efa_macossslbypass_id" {
    value = zia_url_categories.efa_macossslbypass.id
  }


resource "zia_url_categories" "efa_iossslbypass" {
  super_category      = "USER_DEFINED"
  configured_name     = "${local.efa_label_name} iOS SSL Bypass"
  description         = "${local.efa_iossslbypass_desc}"
  #keywords            = ["null"]
  custom_category     = true
  type                = "URL_CATEGORY"
  /*scopes {
    type = "LOCATION"
    scope_entities {
      id = [ data.zpa_location_management.location.id ]
    }
    scope_group_member_entities {
      id = [ data.zia_group_management.engineering.id ]
    }
  }*/
  urls = local.efa_iossslbypass_urls
  depends_on = [zia_url_categories.efa_sslbypass, zia_url_categories.efa_macossslbypass]
}
  output "efa_iossslbypass_id" {
    value = zia_url_categories.efa_iossslbypass.id
  }
