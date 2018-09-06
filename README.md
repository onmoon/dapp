# Dapp in Docker

----
Контейнер для сборки контейнера с помощью dapp от компании flant
https://github.com/flant/dapp
----
## Настройка GitLab Runner
Особенность - это докер сокет для управления докером хоста, и /tmp - для корректной работы кэша Dapp
```
[[runners]]
  name = "gitlab-runner-01"
  url = "https://git.local"
  token = "a5534fd58346ac5fc37ba2b71c79a"
  executor = "docker"
  [runners.docker]
    tls_verify = false
    image = "maxpain/dapp"
    privileged = true
    disable_cache = false
    volumes = ["/cache", "/var/run/docker.sock:/var/run/docker.sock", "/tmp:/tmp", "/root:/root"]
    shm_size = 0
  [runners.cache]
```
