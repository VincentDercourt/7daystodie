
# SERVEUR 7 DAYS TO DIE

--------------------------------------------------
## UTILISATION DE BASE

### Pour télécharger l'image :

>docker pull sirpixel/7daystodie

### pour exécuter l'image :

>docker run -p 26900-26902:26900-26902 -p 26900-26902:26900-26902/udp -p 8080-8082:8080-8082 -v /home/docker/7DaysToDie:/home/sdtdserver -itd --name 7DaysToDie sirpixel/7daystodie

### Si vous souhaiter réaliser des modifications ou vérifier la console vous pouvez exécuter la commande

>docker attach 7DaysToDie 
    
### Vous devez modifier vos identifiants dans le fichier

>/home/sdtdserver/sdtdserver

Si vous avez un steam guard trois solutions

 1. Vous créez un nouveau compte steam et vous désactivez le SteamGuard
 2. Vous supprimmez temporaire le SteamGuard de votre compte
 3. Vous réaliser l'installation manuellement
		Pour cette solution vous devez 
		1. entrez dans votre conteneur avec la commande "docker attach 7DaysToDie"
		2. Vous exécuter la commande suivante /home/sdtdserver/sdtdserver install
		3. Pendant l'installation on va vous poser plus question répondez "Y" a toutes (La majuscule est importante)
		4. Lorsque-l'on vous demande le steam guard récupérer via votre email ou smartphone et sesisez-le
		5. Continuez a répondre "Y" au autre question jusqu’à que l'installation soit terminé
		6. Utiliser la commande "/home/sdtdserver/sdtdserver start"
Astuce : Vous pouvez utiliser le raccourci clavier "CTRL+p CTRL+q" pour quitter votre conteneur


## LISTE DES COMMANDES POSSIBLES

Une fois dans le conteneur vous pouvez utiliser les commandes

> /home/sdtdserver/sdtdserver start   //Pour démarrer le serveur
 /home/sdtdserver/sdtdserver stop    //Pour stoper le serveur
 /home/sdtdserver/sdtdserver restart //Pour redémarrer le server
 /home/sdtdserver/sdtdserver update //Pour mettre a jour le serveur
 /home/sdtdserver/sdtdserver install //Pour installer le serveur
/home/sdtdserver/sdtdserver console  //Pour afficher le serveur

Ou directement en dehors du conteneur

>docker exec 7DaysToDie /home/sdtdserver/sdtdserver start   //Pour démarrer le serveur
docker exec 7DaysToDie /home/sdtdserver/sdtdserver stop    //Pour stoper le serveur
docker exec 7DaysToDie /home/sdtdserver/sdtdserver restart //Pour redémarrer le server
docker exec 7DaysToDie /home/sdtdserver/sdtdserver update //Pour mettre a jour le serveur
docker exec 7DaysToDie /home/sdtdserver/sdtdserver install //Pour installer le serveur
docker exec 7DaysToDie /home/sdtdserver/sdtdserver console  //Pour afficher le serveur

Vous pouvez retrouver la liste complète des commandes et de leur utilité ici
[https://gameservermanagers.com/lgsm/sdtdserver /](https://gameservermanagers.com/lgsm/sdtdserver /)

## Configuration du serveur

Vous pouvez modifier les informations sur le "port, ip, etc.." ici 

### sdtdserver
>/home/sdtdserver/sdtdserver

### le fichier de config par défaut se trouve dans le répertoire 

>/home/sdtdserver/sdtdserver/serverfiles/

**Les chemin fourni ici sont rédigé en fonction de ma plateforme de développement il sera nécessaire d'adapter selon votre configuration**

### UPDATE

02/07/2017 : Ajout d'un crontab toutes les minutes pour redémarrer aprés un crash

### SOURCE

Cette image docker a été réalisé avec l'installateur automatique de [https://gameservermanagers.com/](https://gameservermanagers.com/)

### INFORMATION

Vous pouvez nous retrouver sur le forum de la communauté RAGECLIC 

[https://www.rageclic.fr/](https://www.rageclic.fr/)

ou sur le teamspeak 

[ts3.rageclic.fr](ts3server://ts3.rageclic.fr)


### Attention !!!!
Les ip failover peuvent rendre difficile la visibilité de votre serveur sur les listes steams et les listes de serveurs dans le jeu ou tout autre listes.
