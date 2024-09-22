# Shift Tag Policies Check to Left

This project provides tools and automation to enforce AWS tagging policies earlier in the development lifecycle. By integrating with infrastructure-as-code (IaC) tools such as Terraform, this solution ensures that AWS resources are correctly tagged from the start, preventing non-compliant resources from being deployed.

## Features
- Integration with TFLint and Checkov for IaC tag policy checks
- Automated tagging rule enforcement for AWS resources
- Customizable tag policies via AWS Organizations

## Installation
1. Clone the repository:
   ```bash
   git clone https://github.com/Sagart-cactus/shift-tag-policies-check-to-left.git
2. Install dependencies as needed.

## Usage
Run the following commands to check your Terraform code for AWS tagging policy compliance:
```
tflint --init
tflint --enable-rule aws_tag_policy
```
