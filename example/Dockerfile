FROM --platform=amd64 ghcr.io/willfantom/dana:265

WORKDIR /src
COPY . .
RUN dnc MyApp.dn

ENTRYPOINT [ "dana", "MyApp" ]
