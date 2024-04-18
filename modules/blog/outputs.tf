output "environment_url" {
    description = "The URL of the environment"
    value = module.blog_alb.dns_name
}