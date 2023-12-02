# latex_docker_base
Base latex docker container

Using:
```bush
docker-compose up --build
```

Sources:
- [Base image](https://hub.docker.com/r/qmcgaw/latexdevcontainer);
- [Short tutorial](https://questu.ru/articles/187450/?ysclid=lpmka9lz9i231276522).


Errors.
If was massege:
```bush
Latexmk: Could not find file [%(file-line-error)].
-- Use the -f option to force complete processing.
```
Need to check [settings](.devcontainer/devcontainer.json):
```
"latex-workshop.docker.enabled": false,
```
I installed the extensions manually and made the settings manually after I created the container. But you can use vscode remote development tools, I haven't figured out how to do it yet.