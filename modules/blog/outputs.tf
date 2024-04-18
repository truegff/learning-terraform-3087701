output "environment_url" {
    description = "The URL of the environment"
    value = module.blog_alb.lb_dns_name
}