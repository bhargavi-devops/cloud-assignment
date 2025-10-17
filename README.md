# Event-Driven Data Processing Pipeline — Submission Folder

## Contents
- Research-Report.docx
- Architecture-Diagram.pdf
- architecture_diagram.svg
- infra/ (Terraform modules)
- src/processor/ (lambda_handler.py, requirements.txt, tests)
- package_lambda.sh (packaging script)
- .github/workflows/ci-cd.yml (CI/CD pipeline)
- Video-Script-10min.txt and Narration.txt
- README.md (this file)

## How to run locally (high-level)
1. Install Terraform and AWS CLI; configure AWS credentials with least-privilege for deployment.
2. Build the lambda package: `./package_lambda.sh`
3. Run `terraform init` then `terraform apply` in infra/ (consider `terraform plan` first).
4. Upload a sample file to the S3 raw/ prefix or push events into Kinesis to test processing.
5. Run unit tests: `pytest src/processor/test_lambda.py`

## Notes
- The infra/lambda/lambda.zip in this repo is a placeholder. Run package_lambda.sh to create the real artifact before applying terraform.
- Secrets (AWS credentials) should be stored in GitHub Actions secrets for CI/CD deployment.
