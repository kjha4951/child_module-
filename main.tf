resource "newrelic_synthetics_script_monitor" "synthetics_monitor" {
  for_each = var.monitor_data
  name     = each.value.name
  script   = file(each.value.script)
  locations_public = each.value.locations_public

  status           = "ENABLED"
  type = "SCRIPT_BROWSER"


  period = "EVERY_6_HOURS"

  runtime_type_version = "100"
  runtime_type         = "CHROME_BROWSER"
  script_language      = "JAVASCRIPT"

}
