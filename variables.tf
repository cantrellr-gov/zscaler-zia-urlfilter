variable "efa_urlfilter_name" {
    type = string
    default = null
}
variable "efa_urlfilter_description" {
    type = string
    default = null
}
variable "efa_urlfilter_state" {
    type = string
    default = null
}
variable "efa_urlfilter_action" {
    type = string
    default = null  
}
variable "efa_urlfilter_order" {
    type = number
    default = null
}
variable "efa_urlfilter_url_categories" {
    type = list
    default = null
}
variable "efa_urlfilter_device_trust_levels" {
    type = list
    default = null
}
variable "efa_urlfilter_protocols" {
    type = list
    default = null
}
variable "efa_urlfilter_request_methods" {
    type = list
    default = null
}