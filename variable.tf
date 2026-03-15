variable "components" {
  type = map(map(string))
  default = {
    catalogue = {
      priority = 20
    }
    cart = {
      priority = 30
    }
    user = {
      priority = 40
    }
    shipping = {
      priority = 50
    }
    payment = {
      priority = 45
    }
    frontend = {
      priority = 10
    }
  }
}