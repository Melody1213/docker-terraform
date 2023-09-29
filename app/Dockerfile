# Utilisez une image de base Python
FROM python:3.8

# Copiez les fichiers de l'application dans le container
COPY . /app

# Changez le répertoire de travail
WORKDIR /app

# Installez les dépendances
RUN pip install fastapi[all]

# Exposez le port 8000
EXPOSE 8000

# Exécutez l'application
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
