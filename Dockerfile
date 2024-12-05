FROM golang:1.19.3-alpine3.15 as builder

ADD . /build/
WORKDIR /build/morty
RUN go get github.com/asciimoo/morty
RUN go build

# Copy the compiled executable to a new image to minimise size
FROM alpine:3.20.3
LABEL "Maintainer" "Florian Piesche <florian@yellowkeycard.net>"

COPY --from=builder /build/morty/morty /morty

ENV MORTY_ADDRESS=0.0.0.0:3000

EXPOSE 3000
CMD /morty -key "${MORTY_KEY}" -listen "${MORTY_ADDRESS}"
