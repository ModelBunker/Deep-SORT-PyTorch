FROM nvcr.io/nvidia/tensorflow:18.12-py3

# Set working directory
WORKDIR /home

ENV PYTHONPATH "${PYTHONPATH}:/home"

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y python3-tk python3-pip git tmux htop tree vim progress

# Necessary pip packages
RUN pip3 install --upgrade pip

RUN pip3 install torch==1.3.1 torchvision==0.4.2 matplotlib tensorboard==1.15.0 progress==1.5 opencv-python==4.1.0.25

# Copy SSD code
RUN git clone https://github.com/ModelBunker/Object-Tracking/

	

