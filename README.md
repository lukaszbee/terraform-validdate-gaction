# Terraform Lint & Validation Demo

Demonstracyjny projekt kodu Terraform z walidacją poprzez pipeline GitHub Actions, skupiający się na poprawności kodu bez wdrażania u dostawców chmurowych.

## GitHub Flow i Branch Protection

* **Zakaz Commitów do Main:** Gałąź `main` w tym repozytorium jest chroniona. Zastosowano ograniczenie, które blokuje bezpośrednie wypychanie zmian na main.
* **Pull Request Workflow:** Wszelkie zmiany dodawane do repozytorium **muszą iść przez proces Pull Request**. 
* Tylko przejście weryfikacji w procesie CI (czyli GitHub Actions) umożliwi opcję włączenia kodu (merge).

## Pipeline w GitHub Actions

Pipeline aktywuje się **wyłącznie w momencie utworzenia lub zaktualizowania Pull Requesta** `(trigger: pull_request)`.

Nie jest on włączany podczas aktualizacji (pushowania) do innych branchy czy samego `main`. Składa się na niego proces weryfikacji obejmujący dwa kluczowe zadania:
1. `terraform fmt -recursive -check`: Sprawdza ogólny format plików (czytelność wyższych standardów Terraform)
2. `terraform validate` ze wsparciem środowiska w locie poprzez `terraform init -backend=false`: Weryfikacja syntaktyczna.

Nie implementowano tu instrukcji planujących (plan), bądź wgrywających zmiany na instancję w chmurze (apply).


# tu cos dodam !!!