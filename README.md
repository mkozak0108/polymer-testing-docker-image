## Polymer Testing Docker Image

This repository contains the source code for a docker container which can be used to easily run Polymer unit tests on the latest versions of Chrome and Firefox.

This repository uses scripts that can be found in [this repository](https://gitlab.com/printminion/polymer-tester-gitlab-ci-example) which were originally written by the user **printminion**.

### Utilities available

This container is currently based on the 8.0 LTS version of Node and has both bower and polymer-cli installed already. **Note that by default this container runs commands as root so you need to include the --allow-root flag on bower to avoid issues.** Java 8, Chrome, and Firefox are also installed.

### Running unit tests in the container

1. Add your code to the docker container.
2. Start the X Virtual Framebuffer server (a simulated screen) via the **start-xvfb-server.sh** script included in the container's working directory. The screen size is 1920x1080 by default, and this can be changed by setting the SCREEN_SIZE environment variable.
3. Enter the directory where your code is located and install dependencies with `bower install --allow-root`
4. Run unit tests with `xvfb-run polymer test`. *NOTE: `xvfb-run` will run both chrome and firefox in the virtual display created by **start-xvfb-server.sh**.*