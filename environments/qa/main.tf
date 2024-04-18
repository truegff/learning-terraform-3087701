module "qa" {
    source = "../../modules/blog"
    environment = {
        name = "qa"
    }
}