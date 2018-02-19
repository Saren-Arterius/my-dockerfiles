# FROM gcr.io/tensorflow/tensorflow:latest-gpu-py3
FROM gcr.io/tensorflow/tensorflow:latest-py3

WORKDIR /style2paints-docker

ADD ./app /style2paints-docker

RUN chmod -R 777 /style2paints-docker

RUN pip install --trusted-host pypi.python.org -r /style2paints-docker/requirementsCPU.txt

RUN apt-get update && apt-get install -y \
	libsm6 \
	libxrender1 \
	libfontconfig1 \
	libxext6 \
	git \
	wget \
	parallel

RUN git clone https://github.com/lllyasviel/style2paints.git /style2paints

RUN cat models-shasum.txt | parallel -j 100 --colsep '  ' 'wget https://drop.wtako.net/file/{1}.net -O {2}' && \
	cat models.zip.* > models.zip && cd /style2paints/server && \
	unzip /style2paints-docker/models.zip && rm /style2paints-docker/models.zip /style2paints-docker/models.zip.*

# Optional. Start server automatically
CMD cd /style2paints/server && python server.py -cpu
