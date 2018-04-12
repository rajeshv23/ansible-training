# Ansible Training

Dateien, Konfigurationen und Hinweise für das Ansible Training.

## Editoren

- https://code.visualstudio.com
- https://atom.io
- https://www.jetbrains.com/idea/

## Benutzung

- Provisionierung der CentOS VMs via Cloud Interface
- Verbindung zum Ansible Control Host
- Manuelle Installation von ansible und git
- Checkout des Repositories, z.B. nach /root
- VMs im Ansible Inventory konfigurieren
- Basisinstallation via Ansible Playbook durchführen
  - Installierte Standardpakete, Ansible und Docker
  - Hardening von SSHD (aktueller SSH Client nötig)
```
ansible-playbook playbooks/setup.yml
```
- Git Remote ändern und Bare Repo füllen
```
git remote set-url origin root@123.123.123.123:/opt/ansible-labs.git
git push --set-upstream origin master
```
- Falls gewünscht Repo lokal mit der gewünschten IDE auschecken

## Befehle