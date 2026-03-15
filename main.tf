module "backend" {
  for_each  = var.components
  source    = "git::https://github.com/SATYAVARDHAN04/roboshop-infra-backend.git?ref=main"
  component = each.key
  priority  = each.value.priority
}