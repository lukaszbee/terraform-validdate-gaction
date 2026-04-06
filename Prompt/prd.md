# Product Requirements Document (PRD)

## 1. Cel

Celem projektu jest stworzenie repozytorium demonstracyjnego Terraform z walidacją w GitHub Actions.

## 2. Zakres

* Terraform (`main.tf`)
* GitHub Actions
* README

## 3. Funkcjonalności

* pipeline uruchamiany tylko dla Pull Request
* wykonanie:

  * `terraform fmt`
  * `terraform validate`
* brak:

  * `plan`
  * `apply`

## 4. Wymagania niefunkcjonalne

* brak lokalnych instalacji
* brak integracji z chmurą
* szybkie wykonanie

## 5. Zasady pracy z repo

* zmiany tylko przez Pull Request
* brak bezpośrednich commitów do `main`
* workflow NIE uruchamia się na push do `main`

## 6. Kryteria akceptacji

* workflow działa tylko dla PR
* merge do `main` możliwy tylko po sukcesie pipeline
