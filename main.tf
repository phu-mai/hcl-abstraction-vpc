
module "vpc" {
  source   = "terraform-aws-modules/terraform-aws-vpc/aws"
  name       = var.name
  create_vpc = var.create
  cidr       = lookup(local.settings, "cidr", var.cidr)
  azs        = lookup(local.settings, "azs", var.azs)
  private_subnets     = lookup(local.settings, "private_subnets", var.private_subnets)
  public_subnets      = lookup(local.settings, "public_subnets", var.public_subnets)
  database_subnets    = lookup(local.settings, "database_subnets", var.database_subnets)
  elasticache_subnets = lookup(local.settings, "elasticache_subnets", var.elasticache_subnets)
  redshift_subnets    = lookup(local.settings, "redshift_subnets", var.redshift_subnets)
  intra_subnets       = lookup(local.settings, "intra_subnets", var.intra_subnets)
  secondary_cidr_blocks          = lookup(local.settings, "secondary_cidr_blocks", var.secondary_cidr_blocks)
  customer_gateways              = lookup(local.settings, "customer_gateways", var.customer_gateways)
  create_database_subnet_group   = lookup(local.settings, "create_database_subnet_group", var.create_database_subnet_group)
  enable_dns_hostnames           = lookup(local.settings, "enable_dns_hostnames", var.enable_dns_hostnames)
  enable_dns_support             = lookup(local.settings, "enable_dns_support", var.enable_dns_support)
  enable_classiclink             = lookup(local.settings, "enable_classiclink", var.enable_classiclink)
  enable_classiclink_dns_support = lookup(local.settings, "enable_classiclink_dns_support", var.enable_classiclink_dns_support)
  enable_nat_gateway  = lookup(local.settings, "enable_nat_gateway", var.enable_nat_gateway)
  single_nat_gateway  = lookup(local.settings, "single_nat_gateway", var.single_nat_gateway)
  enable_vpn_gateway  = lookup(local.settings, "enable_vpn_gateway", var.enable_vpn_gateway)
  enable_dhcp_options = lookup(local.settings, "enable_dhcp_options", var.enable_dhcp_options)
  dhcp_options_domain_name         = lookup(local.settings, "dhcp_options_domain_name", var.dhcp_options_domain_name)
  dhcp_options_domain_name_servers = lookup(local.settings, "dhcp_options_domain_name_servers", var.dhcp_options_domain_name_servers)
  enable_s3_endpoint               = lookup(local.settings, "enable_s3_endpoint", var.enable_s3_endpoint)
  enable_dynamodb_endpoint         = lookup(local.settings, "enable_dynamodb_endpoint", var.enable_dynamodb_endpoint)
  enable_ssm_endpoint              = lookup(local.settings, "enable_ssm_endpoint", var.enable_ssm_endpoint)
  ssm_endpoint_private_dns_enabled = lookup(local.settings, "ssm_endpoint_private_dns_enabled", var.ssm_endpoint_private_dns_enabled)
  ssm_endpoint_security_group_ids  = lookup(local.settings, "ssm_endpoint_security_group_ids", var.ssm_endpoint_security_group_ids)
  enable_ssmmessages_endpoint      = lookup(local.settings, "enable_ssmmessages_endpoint", var.enable_ssmmessages_endpoint)
  ssmmessages_endpoint_private_dns_enabled = lookup(local.settings, "ssmmessages_endpoint_private_dns_enabled", var.ssmmessages_endpoint_private_dns_enabled)
  ssmmessages_endpoint_security_group_ids  = lookup(local.settings, "ssmmessages_endpoint_security_group_ids", var.ssmmessages_endpoint_security_group_ids)
  enable_ec2_endpoint                      = lookup(local.settings, "enable_ec2_endpoint", var.enable_ec2_endpoint)
  ec2_endpoint_private_dns_enabled         = lookup(local.settings, "ec2_endpoint_private_dns_enabled", var.ec2_endpoint_private_dns_enabled)
  ec2_endpoint_security_group_ids          = lookup(local.settings, "ec2_endpoint_security_group_ids", var.ec2_endpoint_security_group_ids)
  enable_ec2messages_endpoint              = lookup(local.settings, "enable_ec2messages_endpoint", var.enable_ec2messages_endpoint)
  ec2messages_endpoint_private_dns_enabled = lookup(local.settings, "ec2messages_endpoint_private_dns_enabled", var.ec2messages_endpoint_private_dns_enabled)
  ec2messages_endpoint_security_group_ids  = lookup(local.settings, "ec2messages_endpoint_security_group_ids", var.ec2messages_endpoint_security_group_ids)
  enable_ecr_api_endpoint                  = lookup(local.settings, "enable_ecr_api_endpoint", var.enable_ecr_api_endpoint)
  ecr_api_endpoint_private_dns_enabled     = lookup(local.settings, "ecr_api_endpoint_private_dns_enabled", var.ecr_api_endpoint_private_dns_enabled)
  ecr_api_endpoint_security_group_ids      = lookup(local.settings, "ecr_api_endpoint_security_group_ids", var.ecr_api_endpoint_security_group_ids)
  enable_ecr_dkr_endpoint                  = lookup(local.settings, "enable_ecr_dkr_endpoint", var.enable_ecr_dkr_endpoint)
  ecr_dkr_endpoint_private_dns_enabled     = lookup(local.settings, "ecr_dkr_endpoint_private_dns_enabled", var.ecr_dkr_endpoint_private_dns_enabled)
  ecr_dkr_endpoint_security_group_ids      = lookup(local.settings, "ecr_dkr_endpoint_security_group_ids", var.ecr_dkr_endpoint_security_group_ids)
  enable_kms_endpoint                      = lookup(local.settings, "enable_kms_endpoint", var.enable_kms_endpoint)
  kms_endpoint_private_dns_enabled         = lookup(local.settings, "kms_endpoint_private_dns_enabled", var.kms_endpoint_private_dns_enabled)
  kms_endpoint_security_group_ids          = lookup(local.settings, "kms_endpoint_security_group_ids", var.kms_endpoint_security_group_ids)
  enable_ecs_endpoint                      = lookup(local.settings, "enable_ecs_endpoint", var.enable_ecs_endpoint)
  ecs_endpoint_private_dns_enabled         = lookup(local.settings, "ecs_endpoint_private_dns_enabled", var.ecs_endpoint_private_dns_enabled)
  ecs_endpoint_security_group_ids          = lookup(local.settings, "ecs_endpoint_security_group_ids", var.ecs_endpoint_security_group_ids)
  enable_ecs_telemetry_endpoint            = lookup(local.settings, "enable_ecs_telemetry_endpoint", var.enable_ecs_telemetry_endpoint)
  ecs_telemetry_endpoint_private_dns_enabled = lookup(local.settings, "ecs_telemetry_endpoint_private_dns_enabled", var.ecs_telemetry_endpoint_private_dns_enabled)
  ecs_telemetry_endpoint_security_group_ids  = lookup(local.settings, "ecs_telemetry_endpoint_security_group_ids", var.ecs_telemetry_endpoint_security_group_ids)
  enable_codedeploy_endpoint                 = lookup(local.settings, "enable_codedeploy_endpoint", var.enable_codedeploy_endpoint)
  codedeploy_endpoint_private_dns_enabled    = lookup(local.settings, "codedeploy_endpoint_private_dns_enabled", var.codedeploy_endpoint_private_dns_enabled)
  codedeploy_endpoint_security_group_ids     = lookup(local.settings, "codedeploy_endpoint_security_group_ids", var.codedeploy_endpoint_security_group_ids)
  enable_codedeploy_commands_secure_endpoint = lookup(local.settings, "enable_codedeploy_commands_secure_endpoint", var.enable_codedeploy_commands_secure_endpoint)
  codedeploy_commands_secure_endpoint_private_dns_enabled = lookup(local.settings, "codedeploy_commands_secure_endpoint_private_dns_enabled", var.codedeploy_commands_secure_endpoint_private_dns_enabled)
  codedeploy_commands_secure_endpoint_security_group_ids  = lookup(local.settings, "codedeploy_commands_secure_endpoint_security_group_ids", var.codedeploy_commands_secure_endpoint_security_group_ids)
  manage_default_security_group  = lookup(local.settings, "manage_default_security_group", var.manage_default_security_group)
  default_security_group_ingress = lookup(local.settings, "default_security_group_ingress", var.default_security_group_ingress)
  default_security_group_egress  = lookup(local.settings, "default_security_group_egress", var.default_security_group_egress)
  enable_flow_log                = lookup(local.settings, "enable_flow_log", var.enable_flow_log)
  create_flow_log_cloudwatch_log_group = lookup(local.settings, "create_flow_log_cloudwatch_log_group", var.create_flow_log_cloudwatch_log_group)
  create_flow_log_cloudwatch_iam_role  = lookup(local.settings, "create_flow_log_cloudwatch_iam_role", var.create_flow_log_cloudwatch_iam_role)
  flow_log_max_aggregation_interval    = lookup(local.settings, "flow_log_max_aggregation_interval", var.flow_log_max_aggregation_interval)
  
  tags = merge(
    {
      Terraform         = "true"
      Owner             = "devops"
      KubernetesCluster = lookup(local.settings, "eks_cluster_name", null)
    },
    var.tags,
  )

  private_subnet_tags = merge(
    {
      "kubernetes.io/role/internal-elb" = lookup(local.settings, "eks_cluster_name", null) == null ? null : "1"
      KubernetesCluster                 = lookup(local.settings, "eks_cluster_name", null)

    },
    var.private_subnet_tags,
  )
  
  public_subnet_tags = merge(
    {
      "kubernetes.io/role/elb" = lookup(local.settings, "eks_cluster_name", null) == null ? null : "1"
      KubernetesCluster        = lookup(local.settings, "eks_cluster_name", null)
    },
    var.public_subnet_tags,
  )

}
