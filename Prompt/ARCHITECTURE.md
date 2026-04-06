# Architecture

## 1. Struktura projektu

```
repo/
 ├── main.tf
 ├── README.md
 └── .github/
     └── workflows/
         └── terraform.yml
```

## 2. GitHub Actions

### Trigger

* tylko `pull_request`

### Kroki:

1. checkout
2. setup terraform
3. terraform fmt
4. terraform validate

## 3. Flow

1. developer tworzy branch
2. otwiera Pull Request do `main`
3. GitHub Actions uruchamia walidację
4. jeśli OK → merge możliwy

## 4. Ochrona main

* brak bezpośrednich push
* wymagany PR
* wymagany status check (GitHub Actions)
