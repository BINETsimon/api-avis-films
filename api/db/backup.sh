#!/bin/bash

# Variables pour la connexion à la base de données
DB_HOST="$POSTGRES_HOSTNAME"
DB_USER="$POSTGRES_USER"
DB_NAME="$POSTGRES_DB"

# Répertoire de sauvegarde
BACKUP_DIR="/usr/app/backups"  # Remplacez par le répertoire où vous souhaitez stocker les sauvegardes

# Nom du fichier de sauvegarde
BACKUP_FILENAME="db_backup_$(date +%Y%m%d_%H%M%S).sql"

# Exécute la sauvegarde
PGPASSWORD="$POSTGRES_PASSWORD" pg_dump -h "$DB_HOST" -U "$DB_USER" "$DB_NAME" > "$BACKUP_DIR/$BACKUP_FILENAME"

