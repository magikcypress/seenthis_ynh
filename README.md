# Seenthis for YunoHost

## Seenthis c'est quoi ?

Seenthis permet de tenir à jour un blog personnel constitué de billets courts. Il est principalement destiné à la veille d’actualité. Pour cela, il propose de mettre en valeur le référencement de pages Web, la citation d’extraits et le commentaire, grâce à une mise en forme automatique et adaptée des textes.

Source: [seenthis.net](https://seenthis.net/fran%C3%A7ais/article/c-est-quoi-seenthis)

## Fonctionnalité de l'application pour Yunohost

- Installation de la base sans passer par le système d'installation
- Installation des plugins
- Support multilingue

### Installation

`$ sudo yunohost app install https://github.com/YunoHost-Apps/seenthis_ynh.git`

### Mise à jour

`$ sudo yunohost app upgrade --verbose spip -u https://github.com/YunoHost-Apps/seenthis_ynh.git`

### Utilisation

Accéder à l'administration du site en écrivant l'adresse suivante dans votre navigateur.

https://www.domain.tld/seenthis/ecrire

Faire une demande de "mot de passe oublié" pour changer votre mot de passe, vous recevez un email vous indiquant comment procéder au changement de mot de passe.

### Finalisation de l'installation

Lors de l'installation de Seenthis, les plugins ne sont pas activés. Vous devez vous rendre dans "Configuration" > "Gestion des plugins" > "Liste des plugins", enfin activer tous les plugins en cochant la case de chaques plugins.

## What is Seenthis?

Seenthis allows you to keep up to date a personal blog made up of court tickets. It is mainly intended for the watch of current events. To do this, it proposes to highlight the referencing of web pages, the quotation of excerpts and the commentary, thanks to an automatic and adapted formatting of texts.

### Use

Access the site administration by writing the following address in your browser.

https://www.domain.tld/spip/ecrire

Request a "forgotten password" to change your password, you will receive an email telling you how to change your password.

### End of installation

When installing Seenthis, plugins are not enabled. You need to go to "Configuration"> "Manage plugins"> "List of plugins", finally activate all plugins by checkbox of each plugins.

## Features for Yunohost app

- Database install without going through the system install
- Plugins installation
- Multilanguage support

## Versionning

### Version 1.0.0 (25/02/17)

- Create script install
