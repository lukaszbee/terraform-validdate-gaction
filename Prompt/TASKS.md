# Tasks

## 1. Terraform

* utwórz `main.tf`
* dodaj `null_resource`

## 2. GitHub Actions

* workflow:

  * trigger: pull_request
  * brak triggera push
  * terraform fmt
  * terraform validate

## 3. README

* opisz:

  * PR workflow
  * brak push do main

## 4. Repo config (manualne)

* włącz branch protection dla `main`
* ustaw:

  * require pull request
  * require status checks

## 5. Test

* utwórz branch
* otwórz PR
* sprawdź pipeline

## 6. Done

* brak możliwości push do main
* pipeline działa tylko na PR
