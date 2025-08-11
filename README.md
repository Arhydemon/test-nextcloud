# 🚀 Nextcloud + MariaDB/Postgres + ONLYOFFICE (Docker)

## 📌 Описание

Этот проект разворачивает тестовую установку **Nextcloud** в Docker с выбором базы данных (**MariaDB** или **PostgreSQL**) и интеграцией с **ONLYOFFICE Document Server** для редактирования документов прямо в браузере.

---

## 📂 Состав стека

- **Nextcloud** — веб-платформа для хранения и совместной работы с файлами.
- **MariaDB / PostgreSQL** — базы данных (выбор через `.env`).
- **ONLYOFFICE Document Server** — онлайн-редактор офисных документов.
- **Bash-скрипты** для автоматизации запуска и остановки контейнеров.

---

## ⚙️ Установка

### 1. Предварительные требования

- Docker >= 20.10
- Docker Compose >= 2.x
- Linux/MacOS/Windows (WSL2 для Windows)

---

### 2. Клонирование проекта

```bash
git clone <repo_url> nextcloud-stack
cd nextcloud-stack
```


### 3. Конфигурация окружения

Скопируйте пример файла окружения:

cp .env.example .env

### 4. Инициализация проекта

./scripts/up.sh onlyoffice default

### 5. Остановка 

./scripts/down.sh
