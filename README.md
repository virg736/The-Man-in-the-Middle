# The Man in the Middle

<p align="center">
<img src="The%20Man%20in%20the%20Middle.PNG" alt="Man in the Middle illustration" width="500"/>
</p>

<p align="center"><em>Illustration d’une attaque de type Man-in-the-Middle</em></p>

<p align="center"><strong>© 2025 virg736</strong> – Tous droits réservés. Reproduction interdite sans autorisation.</p>

<p align="center">
<a href="https://creativecommons.org/licenses/by-nd/4.0/">
<img src="https://licensebuttons.net/l/by-nd/4.0/88x31.png" alt="Licence: CC BY-ND 4.0">
</a>
<img src="https://img.shields.io/badge/stabilité-stable-brightgreen.svg" alt="Stabilité: stable">
</p>
<p align="center"><strong>📸 Image protégée — Propriété exclusive</strong></p>

<p align="center">


---

A local audit toolkit to detect proxy-based interception tools (Burp Suite, Fiddler, MITMProxy...).

---
## ⚠️ Note de vigilance 

**Pourquoi être vigilant ?**
Un proxy ou un faux certificat peut être installé à votre insu par :
- Un logiciel tiers (outil de débogage, VPN, outil de sécurité intrusif)
- Un malware ou logiciel espion
- Une configuration réseau modifiée (Wi-Fi public, entreprise, etc.)

---

## Table of Contents

- [The Man in the Middle](#the-man-in-the-middle)
- [What is "The Man in the Middle"?](#what-is-the-man-in-the-middle)
- [Qu'est-ce que “L’homme du milieu” ?](#quest-ce-que-lhomme-du-milieu-)
- [Features](#features)
- [Manual Check (Windows) 🇬🇧](#manual-check-windows-)
- [Vérification manuelle sur Windows 🇫🇷](#vérification-manuelle-sur-windows-)
- [Available Scripts](#available-scripts)
  
---

### Qu'est-ce que “L’homme du milieu” ?

**“L’homme du milieu”** est un petit outil local pour détecter les proxys malveillants, des certificats suspects et outils d'interception HTTPS, (Burp Suite, Fiddler ou MITMProxy).


**L’homme du milieu** – outil local pour détecter les proxys malveillants, certificats suspects et outils d’interception HTTPS.

### Fonctionnalités :
- Vérifie les paramètres proxys
- Détecte les certificats liés à Burp, Fiddler, etc.
- Compatible Windows (PowerShell / CMD) et Linux

  ---

##  Détection simple d’un Homme du Milieu (MITM)

### 1️⃣ Vérifier le proxy dans Windows
Commande :
cmd

netsh winhttp show proxy

- **Normal** : Accès direct (sans serveur proxy)
- **Suspect** : adresse IP ou `127.0.0.1:PORT` indiquant un proxy actif.

---

### 2️⃣ Vérifier le proxy dans Firefox

1. Ouvrir Firefox  

2. Taper dans la barre d’adresse :

about:preferences#general

3. Descendre jusqu'à **Paramètres réseau** → cliquer sur **Paramètres…**
4. Regarder :
- **Normal** : Pas de proxy / Utiliser les paramètres proxy du système
- **Suspect** : Configuration manuelle avec IP ou port.

---

### 3️⃣ Vérifier les certificats dans Firefox
1. Dans Firefox, taper :

about:certificate

2. Onglet **Autorités** : vérifier la liste des autorités
3. **Normal** : DigiCert, GlobalSign, Let's Encrypt, etc.
4. **Suspect** : Burp, PortSwigger, Proxy CA, Fiddler, MITMProxy.

---

### 4️⃣ Vérifier les ports ouverts
Commande :
cmd

netstat -abno | findstr LISTENING


 ## Vérification manuelle sur Windows 🇫🇷

> Ce module peut se compléter par une vérification visuelle directe sur votre machine, sans script.

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

- 
  
### Available Scripts

### Windows
- [audit-proxy.bat](tools/audit-proxy.bat)

### Linux
- [audit-proxy-linux.sh](tools/audit-proxy-linux.sh)

Ces scripts effectuent les mêmes contrôles automatiquement : logiciels installés, configuration proxy, ports d’écoute, et certificats suspects.

---
## 7. Avertissement légal

  ## Licence

Le script est publié sous la licence **MIT**.

---

## À propos de l’usage

Ce projet est destiné **exclusivement à des fins pédagogiques**, notamment dans le cadre :
- d’une formation en cybersécurité,
- de tests d’intrusion légaux (pentest),
- d’analyses réseau dans un environnement contrôlé.

> L’auteure **ne cautionne ni n’autorise** l’utilisation de ce script en dehors d’un cadre légal strictement défini.
> Toute utilisation non conforme est interdite et relève **uniquement de la responsabilité de l’utilisateur**.

---

## Droits sur les visuels

Les visuels, illustrations ou captures présents dans ce dépôt sont la propriété exclusive de l’auteure.
Toute reproduction ou réutilisation sans **autorisation préalable** est interdite.

© 2025 Virginie Lechene — Tous droits réservés.


















