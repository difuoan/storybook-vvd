# storybook-vvd
storybook + vite + docker + our vue component library

## Knowledge
* [node.js](https://nodejs.org/en)
* [npm](https://docs.npmjs.com/)
* [Vue](https://vuejs.org/)
* [Vite](https://vitejs.dev/)
* [Docker](https://www.docker.com/)
* [Docker Compose](https://docs.docker.com/compose/)
* [GNU make](https://www.gnu.org/software/make/manual/make.html)

## Installing & Running Repository

### Clone & Install Repository
```
git clone https://github.com/difuoan/storybook-vvd
cd storybook-vvd/
make init
```

### Run Repository
```
make up
```

### All `make` Commands
```
init # Add default .env
up
start
down
stop
tail # get logs
build
restart
clear # Remove .env
ps # Lists containers for a Compose project, with current status and exposed ports.
```
