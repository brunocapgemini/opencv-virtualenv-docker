FROM ubuntu:18.04

RUN apt update && apt install \
  -y --no-install-recommends python3 python3-virtualenv python3-pip 
ENV VIRTUAL_ENV=/opt/venv

RUN python3 -m pip install opencv-contrib-python
RUN python3 -m virtualenv --python=/usr/bin/python3 $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

CMD ["source", "$VIRTUAL_ENV/bin/activate"]

# Install dependencies:
COPY requirements.txt .
RUN python3 -m pip install -r requirements.txt

CMD ["ls", "-l"]

# Run the application:
COPY motion_detection.py .
CMD ["python", "motion_detection.py"]
