variable "cloudflare_api_token" {
  type        = string
  description = "Cloudflare API token to modify a zone"
}

variable "cloudflare_zone_id" {
  type        = string
  description = "Cloudflare Zone Id for the zone to modify"
}

variable "ip" {
  type        = string
  description = "Ip address to set for the record"
}

variable "record_name" {
  type        = string
  description = "Record Name, this is the preceding part of the zone name. e.g. record_name.zone_name"
}

variable "ttl" {
  type        = number
  description = "TTL for the record to be created"
  default     = 300
}