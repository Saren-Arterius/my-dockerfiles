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
        - `$ docker build -t saren/butterflow butterflow` and wait
2. `$ mkdir /tmp/butterflow && cp /path/to/your/video.mp4 /tmp/butterflow/video.mp4`
3. `$ docker run -it --rm -v /tmp/butterflow:/butterflow saren/butterflow butterflow -m -v /butterflow/video.mp4 -o /butterflow/out.mp4`
4. Retrieve the processed video `/tmp/butterflow/out.mp4`
# Butterflow
### Origin
https://github.com/lllyasviel/style2paints
https://github.com/lllyasviel/style2paints/issues/36
### Usage
1. Retrieve the docker image
    - Build the docker image
        - `$ docker build -t style2paint-cpu style2paint` and wait
2. `$ docker run --rm -p 8000:8000 -it style2paint-cpu`
3. Navigate to http://localhost:8000
