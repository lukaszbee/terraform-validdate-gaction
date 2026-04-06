# Agent Prompt

Your task is to create a minimal Terraform project with GitHub Actions.

## Goal

Run:

* terraform fmt
* terraform validate

## Terraform

* create `main.tf`
* use `null_resource`
* no cloud providers
* no authentication

## GitHub Actions

### Workflow file:

`.github/workflows/terraform.yml`

### Trigger:

* ONLY on pull_request
* DO NOT trigger on push

### Steps:

* checkout
* setup terraform
* run:
  terraform fmt -recursive
* run:
  terraform init -backend=false
  terraform validate

## Repository Rules

* changes must be made ONLY via pull requests
* do not allow direct commits to main
* assume branch protection is enabled

## README

* explain PR-based workflow
* explain that main is protected

## Constraints

* no terraform plan
* no terraform apply
* no external services
* no secrets

## Success Criteria

* workflow runs on PR
* no workflow on push to main
* terraform validate passes
