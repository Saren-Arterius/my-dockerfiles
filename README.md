# My Dockerfiles
Here lies my dockerfiles for tools that are hard to install in my systems.
# Base usage
1. Install docker in your system
2. For image building, clone this repo `$ git clone https://github.com/Saren-Arterius/my-dockerfiles && cd my-dockerfiles`
# Butterflow
### Origin
https://github.com/dthpham/butterflow
### Usage
1. Retrieve the docker image
    - Pull from docker hub, it will be done automatically as you `docker run`
    - or build the docker image
        1. `$ docker build butterflow` and wait
        2. Check `$ docker images` and retrieve the latest image ID, should be something like `60bbf6105c4f`
        3. `$ docker tag 60bbf6105c4f saren/butterflow`
2. `$ mkdir /tmp/butterflow && cp /path/to/your/video.mp4 /tmp/butterflow/video.mp4`
3. `$ docker run -it --rm -v /tmp/butterflow:/butterflow saren/butterflow butterflow -m -v /butterflow/video.mp4 -o /butterflow/out.mp4`
4. Retrieve the processed video `/tmp/butterflow/out.mp4`
