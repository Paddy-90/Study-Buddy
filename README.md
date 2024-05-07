# StudyBuddy 0.2 (VektorDB funktioniert gerade nicht)

Zur Zeit funktioniert der import der Vektor DB nicht, deshalb wurde es auskommentiert. 

Die .example.env muss bearbeitet werden und in .env umbenannt werden. 

Angular Frontend, Django Backend und Postgres Datenbank.

## Inhaltsverzeichnis

- [StudyBuddy 0.2](#studybuddy-02)
  - [Inhaltsverzeichnis](#inhaltsverzeichnis)
  - [Voraussetzungen](#voraussetzungen)
  - [Installation](#installation)
    - [Repository klonen](#repository-klonen)
  - [Projektstruktur](#projektstruktur)
  - [Start](#start)
    - [Docker Desktop](#docker-desktop)
    - [Manuell starten](#manuell-starten)
      - [Frontend (angular)](#frontend-angular)
      - [Backend (django)](#backend-django)
  - [Admin Bereich und APIs](#admin-bereich-und-apis)

## Voraussetzungen

Vor der Installation des Projekts müssen Sie sicherstellen, dass die folgenden Voraussetzungen erfüllt sind:

- Git [Git-Website](https://git-scm.com/)
- Node.js (mindestens Version 14) [Node.js-Website](https://nodejs.org/)
- Python (mindestens Version 3.7, besser 3.10) [Python-Website](https://www.python.org/)
- Pip (Python-Paketmanager) [Pip-Website](https://pypi.org/project/pip/)
- Docker Desktop [Docker-Website](https://www.docker.com/products/docker-desktop) (Windows oder Mac)
- Docker Compose [Docker-Compose-Website](https://docs.docker.com/compose/install/)

## Installation

### Repository klonen

Im gewünschten Verzeichnis das Repository klonen.

```bash
git clone https://github.com/Paddy-90/StudyBuddy.git
```

## Projektstruktur

- angular
  - src
    - app
      - _helper // Hilfsfunktionen
      - api // REST-Service
      - components // Angular Komponenten
      - app.component.html // Hauptkomponente (HTML)
      - app.component.ts // Hauptkomponente (Typescript)
      - app.module.ts // Hauptmodul
      - app-routing.module.ts // Routing Pfade für die gesamte Seite
    - assets // Bilder, Icons, etc
    - environments // Umgebungsvariablen
  - ssl // Zertifikate für HTTPS
- django
  - agents // Model/Endpoints for all agent things
  - back // main settings and urls
  - chat // the chatbot framework
    - agents // the agent factory with all different agents from the chatbot
    - prompts // different prompts
    - tools // different tools
  - quiz // Model/Endpoint for all quiz things
  - users // Model/Endpoint for all user/auth things
- docker-compose.yml // Docker Compose Datei
- README.md // *Diese* Datei

## Start

Normalerweise sollte sich der Dockercontainer bei Veränderungen automatisch aktualiseren weshalb ein manueller Start nicht nötig ist. Trotzdem wird im folgenden beides beschrieben.

### Docker Desktop

- Docker Desktop starten und sicherstellen, dass Docker läuft.
- Terminal im Projektverzeichnis öffnen.
- `docker-compose up` ausführen.
- Docker Desktop sollte den Container jetzt importiert haben und man kann alle Images in der App sehen.
- Über localhost sollte die Seite jetzt erreichbar sein

### Manuell starten

#### Frontend (angular)

Zum Testen, ob node.js und npm installiert sind:
`node -v` und `npm -v`

```bash
cd frontend
npm install
```

#### Backend (django)

Zum Testen, ob Python und Pip installiert sind:
`python --version` und `pip --version`
Es lohnt sich, sich als erstes eine virtuelle Umgebung zu erstellen:

```bash
python -m venv <name> #erstellen
source <name>/bin/activate` #aktivieren (mac/linux)
.\<name>\Scripts\activate #aktivieren (windows)
```

Installieren der benötigten Packages:

```bash
pip install -r requirements.txt
```

Im .env File muss die DB geändert werden (lokal/prod).
Beim ersten Start/Änderungen sollte die DB vor dem Start migriert werden:

```bash
python manage.py makemigrations
python manage.py migrate
python manage.py runserver 0.0.0.0:8000 #start
```

## Admin Bereich und APIs

Um in den Admin Bereich zu kommen könnt ihr nach dem Start die folgende URL benutzen:
<http://localhost:8000/admin/>

Die Login Daten für den Admin User stehen im .env File und können bei Bedarf geändert werden.

Die verschiedenen APIs und ihre Eigenschaften (Parameter, Response...) sind unter folgender URL zu sehen:
<http://localhost:8000/swagger/>
