rule "aws_resource_missing_tags" {
  enabled = true
  tags = ["Foo", "Bar"]
  exclude = ["aws_autoscaling_group"] # (Optional) Exclude some resource types from tag checks
}

plugin "aws" {
    enabled = true
    version = "0.27.0"
    source  = "github.com/terraform-linters/tflint-ruleset-aws"
}

plugin "terraform" {
  enabled = true
  preset  = "recommended"
}