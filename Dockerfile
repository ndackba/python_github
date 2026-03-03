# Image officielle Python 3.9
FROM python:3.9-slim

# Définir le dossier de travail
WORKDIR /app

# Copier les fichiers du projet
COPY . .

# Installer les dépendances si requirements.txt existe
RUN pip install --no-cache-dir -r requirements.txt || true

# Exposer le port (si application web)
EXPOSE 8080

# Commande de démarrage
CMD ["python", "app.py"]
