terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.1.0"
    }
  }
}

#variable "names" {
#  type        = list(string)
#  description = "1, 2, 3"
#}

#resoure "aws_foo" "bar" {
#  for_each = toset(var.names)
#  name = each.key
#}


resource "aws_appconfig_application" "example" { #application
  description    = "Example Configuration Profile"
  name           = "example-configuration-profile-tf"
  #location_uri   = "hosted"

  #validator {
  #  content = aws_lambda_function.example.arn
  #  type    = "JSON"
  #}
}

#Single Enviornment copy and change env names for multiple
resource "aws_appconfig_environment" "example" { 
  name           = "env1"
  description    = "Example Environment"
  application_id = aws_appconfig_application.example.id

  #Use if cloudwatch is needed
  #monitor {
  #  alarm_arn      = aws_cloudwatch_metric_alarm.example.arn
  #  alarm_role_arn = aws_iam_role.example.arn
  #}

  tags = {
    Type = "AppConfig Environment"
  }
}

resource "aws_appconfig_configuration_profile" "example" { #Config Profile (needs multiple different location uris)
  application_id = aws_appconfig_application.example.id
  description    = "Example Configuration Profile"
  name           = "example-configuration-profile-tf"
  location_uri   = "hosted"

  #validator {
  #  content = aws_lambda_function.example.arn
  #  type    = "JSON"
  #}
}

  