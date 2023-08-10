# ZIA URL Filtering Policies
resource "zia_url_filtering_rules" "efa_urlfilter" {
    name                = var.efa_urlfilter_name
    description         = var.efa_urlfilter_description
    state               = var.efa_urlfilter_state
    action              = var.efa_urlfilter_action
    order               = var.efa_urlfilter_order
    url_categories      = var.efa_urlfilter_url_categories
    device_trust_levels = var.efa_urlfilter_device_trust_levels
    protocols           = var.efa_urlfilter_protocols
    request_methods     = var.efa_urlfilter_request_methods
}