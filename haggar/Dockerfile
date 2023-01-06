FROM alpine:latest
RUN apk add --update --no-cache go git ca-certificates
RUN go install github.com/gorsuch/haggar@latest
ENTRYPOINT ["/root/go/bin/haggar"]
