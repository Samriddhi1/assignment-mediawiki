This repository contains automation code for mediawiki software deployment.

The application has been deployed and can be accessed over following url:  http://34.70.97.229:8000

Repository link: 
 
The deployment has been automated using declarative jenkinsfile created one for mediawiki application and database each.

The deployment has been automated using Jenkins (declarative pipeline).

The flow requires authentication with GCP cluster, where deployment is supposed to happen. Upon authentication, the jenkinsfiles build the two dockerfiles, push them both to a gcr container registry(image registry), and create deployments for the application and the database. Since, the application receives traffic from the internet, its service is created of the type "loadbalancer", whereas the database remains internal with service of the type default i.e., "cluster-ip".




