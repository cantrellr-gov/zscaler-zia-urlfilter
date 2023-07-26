# ZIA URL Filtering Policies
resource "zia_url_filtering_rules" "efa_urlfilter_block" {
    name                = "${local.efa_label_name} Filter Block"
    description         = "${local.efa_filterblock_desc}"
    state               = "ENABLED"
    action              = "BLOCK"
    order               = 2
    url_categories      = ["${zia_url_categories.efa_urlblocklist.id}","ADULT_SEX_EDUCATION","ADULT_THEMES","ANONYMIZER","COMPUTER_HACKING","COPYRIGHT_INFRINGEMENT","CULT","ENCR_WEB_CONTENT","FILE_HOST","GAMBLING","K_12_SEX_EDUCATION","LINGERIE_BIKINI","MARIJUANA","MATURE_HUMOR","MILITANCY_HATE_AND_EXTREMISM","MISCELLANEOUS_OR_UNKNOWN","NEWLY_REG_DOMAINS","NON_CATEGORIZABLE","NUDITY","OTHER_GAMES","OTHER_ADULT_MATERIAL","OTHER_DRUGS","OTHER_ILLEGAL_OR_QUESTIONABLE","OTHER_MISCELLANEOUS","P2P_COMMUNICATION","PORNOGRAPHY","QUESTIONABLE","REMOTE_ACCESS","SHAREWARE_DOWNLOAD","SOCIAL_ADULT","SOCIAL_NETWORKING_GAMES","ADWARE_OR_SPYWARE","TASTELESS"]
    device_trust_levels = ["UNKNOWN_DEVICETRUSTLEVEL", "LOW_TRUST", "MEDIUM_TRUST", "HIGH_TRUST"]
    protocols           = ["ANY_RULE"]
    request_methods     = [ "CONNECT", "DELETE", "GET", "HEAD", "OPTIONS", "OTHER", "POST", "PUT", "TRACE"]

    depends_on = [zia_url_categories.efa_urlblocklist]
}

resource "zia_url_filtering_rules" "efa_urlfilter_allow" {
    name                = "${local.efa_label_name} Filter Allow"
    description         = "${local.efa_filterallow_desc}"
    state               = "ENABLED"
    action              = "ALLOW"
    order               = 1
    url_categories      = ["${zia_url_categories.efa_urlallowlist.id}"]
    device_trust_levels = ["UNKNOWN_DEVICETRUSTLEVEL", "LOW_TRUST", "MEDIUM_TRUST", "HIGH_TRUST"]
    protocols           = ["ANY_RULE"]
    request_methods     = [ "CONNECT", "DELETE", "GET", "HEAD", "OPTIONS", "OTHER", "POST", "PUT", "TRACE"]

    depends_on = [zia_url_categories.efa_urlallowlist]
}
