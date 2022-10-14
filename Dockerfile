FROM nginx:alpine

WORKDIR /py

COPY main.py .
COPY lib.zip .

RUN apk update && \
    apk add --no-cache ca-certificates && \
    chmod +x main.py

EXPOSE 8080

CMD python3 ./main.py
