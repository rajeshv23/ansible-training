# Ansible Training

Dateien, Konfigurationen und Hinweise für das Ansible Training.

## Editoren

- https://code.visualstudio.com
- https://atom.io
- https://www.jetbrains.com/idea/

## Wichtiges

- VMs werden via cloud-init vorkonfiguriert
- EPEL und Puppet Repository sind bereits eingebunden
- Ansible, Puppet und Docker sind bereits vorinstalliert
- SSH Verbindung benoetigt einen halbwegs aktuellen Client
- Git Bare Repo in /opt, ausgecheckt in /root
- Hooks fuer lokales arbeiten sind vorkonfiguriert

## Benutzung

- Falls gewuenscht den eigenen SSH Key hinterlegen
- Checkout des Repositories vom Control Host
```
git clone root@123.123.123.123:/opt/ansible-training.git
```
- Alternativ kann auch lokal via vim oder nano gearbeitet werden

