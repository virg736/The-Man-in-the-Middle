# The Man in the Middle

<p align="center">
<img src="The%20Man%20in%20the%20Middle.PNG" alt="Man in the Middle illustration" width="500"/>
</p>

<p align="center"><em>Illustration d’une attaque de type Man-in-the-Middle</em></p>

<p align="center"><strong>© 2025 virg736 — Tous droits réservés. Reproduction interdite sans autorisation.</strong></p>

<p align="center">
<a href="LICENSE">
<img src="https://img.shields.io/badge/License-MIT-blue.svg" alt="License MIT">
</a>
<img src="https://img.shields.io/badge/stability-stable-brightgreen.svg" alt="Stability: Stable">
</p>

---

A local audit toolkit to detect proxy-based interception tools (Burp Suite, Fiddler, MITMProxy...).

- *This project is available in both English and French.*
- *Ce projet est disponible en anglais et en français.*

---
## ⚠️ Note de vigilance / Security Note

**Pourquoi être vigilant ?**
Un proxy ou un faux certificat peut être installé à votre insu par :
- Un logiciel tiers (outil de débogage, VPN, outil de sécurité intrusif)
- Un malware ou logiciel espion
- Une configuration réseau modifiée (Wi-Fi public, entreprise, etc.)

---

**Why should you be cautious?**
A proxy or fake certificate can be silently installed due to:
- Third-party software (debugging tools, VPNs, intrusive security tools)
- Malware or spyware
- Modified network configuration (e.g., public or corporate Wi-Fi)

---

## Table of Contents

- [The Man in the Middle](#the-man-in-the-middle)
- [What is "The Man in the Middle"?](#what-is-the-man-in-the-middle)
- [Qu'est-ce que “L’homme du milieu” ?](#quest-ce-que-lhomme-du-milieu-)
- [Features](#features)
- [Version française 🇫🇷](#version-française-)
- [Manual Check (Windows) 🇬🇧](#manual-check-windows-)
- [Vérification manuelle sur Windows 🇫🇷](#vérification-manuelle-sur-windows-)
- [Available Scripts](#available-scripts)
  

_A local audit toolkit to detect proxy-based interception tools (Burp Suite, Fiddler, MITMProxy...)_

### What is "The Man in the Middle"?

**"The Man in the Middle"** is a simple toolkit to help users detect whether their computer is being intercepted by a local proxy or fake root certificate. It’s useful for identifying potential intrusions from tools like Burp Suite, Fiddler, or MITMProxy.

---

### Qu'est-ce que “L’homme du milieu” ?

**“L’homme du milieu”** est un petit outil local pour détecter les proxys malveillants, des certificats suspects et outils d'interception HTTPS, (Burp Suite, Fiddler ou MITMProxy).


## Features
- Detects suspicious proxies settings
- Finds certificates like PortSwigger / Burp
- Works on Windows (PowerShell, CMD) and Linux (bash)

---

## Version française 🇫🇷

**L’homme du milieu** – outil local pour détecter les proxys malveillants, certificats suspects et outils d’interception HTTPS.

### Fonctionnalités :
- Vérifie les paramètres proxys
- Détecte les certificats liés à Burp, Fiddler, etc.
- Compatible Windows (PowerShell / CMD) et Linux

  ---
  ## Manual Check (Windows) 🇬🇧

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

 ## Vérification manuelle sur Windows 🇫🇷

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
  
  ---
  
### 5. Ports d’écoute

- Ouvrir `cmd` et exécuter : netstat -abno | findstr LISTENING



  
### Available Scripts

### Windows
- [audit-proxy.bat](tools/audit-proxy.bat)

### Linux
- [audit-proxy-linux.sh](tools/audit-proxy-linux.sh)

Ces scripts effectuent les mêmes contrôles automatiquement : logiciels installés, configuration proxy, ports d’écoute, et certificats suspects.

---
## 7. Avertissement légal

 Ce projet est exclusivement destiné à des fins éducatives, dans le cadre de la formation à la cybersécurité.
 L’auteure ne cautionne ni n’autorise l’utilisation de ces techniques en dehors d’un cadre légal strictement défini.
 Toute utilisation non autorisée est interdite et relève de la seule responsabilité de l’utilisateur.

## Licence

Ce projet est sous licence MIT – voir le fichier [LICENSE](LICENSE) pour plus de détails.

## Clause de non-responsabilité

Ce projet est fourni **à des fins strictement éducatives**.
Toute utilisation de ce code ou de ces techniques dans un cadre illégal, non autorisé, ou à l’encontre des lois en vigueur est **strictement interdite**.
**L’autrice décline toute responsabilité** en cas d’usage abusif, malveillant ou contraire à l’éthique du contenu ou des outils présentés.

Le projet est distribué **"en l’état", sans aucune garantie**, conformément aux termes de la **licence MIT**.



## 8. Auteur / Droits

© 2025 Virginie Lechene — Tous droits réservés.
Reproduction interdite sans autorisation.



















