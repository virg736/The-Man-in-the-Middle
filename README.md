# The-Man-in-the-Middle
A  local audit toolkit to detect proxy-based interception tools ( Burp Suite, Fiddler, MITMProxy...) 
- > **This project is available in both English and French / Ce projet est disponible en anglais et en français.**
# The Man in the Middle

## 📑 Table of Contents

- [The Man in the Middle](#the-man-in-the-middle)
- [What is "The Man in the Middle"?](#what-is-the-man-in-the-middle)
- [Quest-ce-que-lhomme-du-milieu](#quest-ce-que-lhomme-du-milieu-)
- [Features](#features)
- [🇫🇷 Version française](#version-française)
- [🇬🇧 Manual Check (Windows)](#manual-check-windows)
- [🇫🇷 Vérification manuelle sur Windows](#vérification-manuelle-sur-windows)
- [🇬🇧 Automate the check with provided scripts](#automate-the-check-with-provided-scripts)
- [🇫🇷 Automatiser la vérification avec les scripts](#automatiser-la-vérification-avec-les-scripts)
  

_A local audit toolkit to detect proxy-based interception tools (Burp Suite, Fiddler, MITMProxy...)_

### What is "The Man in the Middle"?

**"The Man in the Middle"** is a simple toolkit to help users detect whether their computer is being intercepted by a local proxy or fake root certificate. It’s useful for identifying potential intrusions from tools like Burp Suite, Fiddler, or MITMProxy.

---

### Qu'est-ce que “L’homme du milieu” ?

**“L’homme du milieu”** est un petit outil qui permet de détecter si un proxy local ou un faux certificat a été installé sur un ordinateur. Il est utile pour repérer une interception potentielle via des outils comme Burp Suite, Fiddler ou MITMProxy.

## Features
- Detects suspicious proxy settings
- Finds certificates like PortSwigger / Burp
- Works on Windows (PowerShell, CMD) and Linux (bash)

---

## 🇫🇷 Version française

**L’homme du milieu** – Outil local pour détecter les proxys malveillants, certificats suspects et outils d’interception HTTPS.

### Fonctionnalités :
- Vérifie les paramètres proxy
- Détecte les certificats liés à Burp, Fiddler, etc.
- Compatible Windows (PowerShell / CMD) et Linux

  ---
  ## 🇬🇧 Manual Check (Windows)

> You can also manually inspect your system without running any script.

### 1. Installed Programs

- Open **Apps & Features**
- Look for software like:
- `Burp Suite`, `Fiddler`, `PortSwigger`, `Charles Proxy`, `MITMProxy`
- Or anything suspicious, unknown, or recently installed

### 2. Running Processes

- Open the **Task Manager** (Ctrl + Shift + Esc)
- Go to the **Details** tab
- Look for:
- `java.exe`, `burpsuite.exe`, `fiddler.exe`, `python.exe`, etc.

### 3. Proxy Configuration

- Open **Internet Options**
- Go to **Connections** > **LAN Settings**
- If a proxy is enabled, it should raise suspicion (e.g., `127.0.0.1:8080`)

### 4. Root Certificates

- Press **Win + R**, type:

 ---

 ## 🇫🇷 Vérification manuelle sur Windows

> Ce module peut être complété par une vérification visuelle directe sur votre machine, sans script.

### 1. Programmes installés

- Ouvrir **Applications et fonctionnalités**
- Rechercher dans la liste :
- `Burp Suite`, `Fiddler`, `PortSwigger`, `Charles`, `MITMProxy`
- Ou tout logiciel inconnu ou suspect

### 2. Processus actifs

- Ouvrir le **Gestionnaire des tâches**
- Vérifier dans **l’onglet Détails** :
- `java.exe`, `burpsuite.exe`, `fiddler.exe`, `python.exe`, etc.

### 3. Paramètres proxy

- Aller dans **Options Internet** > **Connexions** > **Paramètres réseau**
- Vérifier si un proxy est activé :
- Exemple suspect : `127.0.0.1:8080`

### 4. Certificats installés

- Taper `certmgr.msc` dans **Exécuter (Win + R)**
- Aller dans :
- **"Autorités de certification racines de confiance" > "Certificats"**
- Chercher :
- `PortSwigger`, `Burp`, `Proxy CA`, ou noms étranges/récents

### 5. Ports d’écoute

- Ouvrir `cmd` et exécuter :
```cmd
netstat -abno | findstr LISTENING

---
## 🇬🇧 Automate the check with provided scripts

For a faster and repeatable audit, you can use the ready-made scripts included in this repository:

### Windows

- [Run `audit-proxy.bat` (CMD script)](tools/audit-proxy.bat)

### Linux

- [Run `audit-proxy-linux.sh` (Bash script)](tools/audit-proxy-linux.sh)

> These scripts perform the same checks automatically: installed tools, proxy configuration, listening ports, and suspicious certificates.

---

## 🇫🇷 Automatiser la vérification avec les scripts

Pour un audit plus rapide ou répétable, utilisez les scripts prêts à l’emploi fournis dans ce dépôt :

### Windows

- [Exécuter `audit-proxy.bat` (script CMD)](tools/audit-proxy.bat)

### Linux

- [Exécuter `audit-proxy-linux.sh` (script Bash)](tools/audit-proxy-linux.sh)

> Ces scripts effectuent les mêmes contrôles automatiquement : logiciels installés, configuration proxy, ports d’écoute, et certificats suspects.




