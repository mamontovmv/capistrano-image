## Image for deployment
* Based on Alpine linux + ruby
* capistrano (3.10.0)
* capistrano-composer (0.0.6)
* capistrano-file-permissions (1.0.0, 0.1.1)
* capistrano-laravel (1.2.1)
* capistrano-symfony:0.4.0
* capistrano-scm-rsync (0.1.2)
* rsync

Full packages list:
```bash
docker run -it capistrano gem list --local
```

## Environment variables
$SSH_PRIVATE_KEY - default SSH private key for connect to target server

## WORKDIR 
* /var/www/html

## Example
```bash
docker run -v `pwd`:/var/www/html --env SSH_PRIVATE_KEY="`cat ~/.ssh/keys/jenkins.id_rsa`" -it capistrano cap development deploy
```