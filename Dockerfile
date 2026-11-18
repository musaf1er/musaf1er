FROM mrismanaziz/man-userbot:buster

WORKDIR /home/man-userbot/

# Use this repository's source instead of cloning the upstream repository.
RUN rm -rf /home/man-userbot && mkdir -p /home/man-userbot
COPY . /home/man-userbot/

RUN chmod +x start && mkdir -p bin

CMD ["python3", "-m", "userbot"]
