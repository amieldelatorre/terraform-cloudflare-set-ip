resource "cloudflare_record" "home_ip" {
  zone_id = var.cloudflare_zone_id
  name    = var.record_name
  value   = var.ip
  type    = "A"
  ttl     = var.ttl
  proxied = false
}