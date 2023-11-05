variable "monitor_data" {

  type = map(object({
    name             = string
     script         = string
     locations_public = list(string)
  }))
}
