# corsproxy

> standalone CORS proxy

[![Build Status](https://travis-ci.org/gr2m/CORS-Proxy.svg?branch=master)](https://travis-ci.org/gr2m/CORS-Proxy)
[![Dependency Status](https://david-dm.org/gr2m/CORS-Proxy.svg)](https://david-dm.org/gr2m/CORS-Proxy)
[![devDependency Status](https://david-dm.org/gr2m/CORS-Proxy/dev-status.svg)](https://david-dm.org/gr2m/CORS-Proxy#info=devDependencies)

[![NPM](https://nodei.co/npm/corsproxy.png?downloads=true&downloadRank=true&stars=true)](https://nodei.co/npm/corsproxy/)


## Setup

```
npm install -g corsproxy
corsproxy
# with custom port: CORSPROXY_PORT=1234 corsproxy
# with custom host: CORSPROXY_HOST=localhost corsproxy
# with debug server: DEBUG=1 corsproxy
# with custom payload max bytes set to 10MB (1MB by default): CORSPROXY_MAX_PAYLOAD=10485760 corsproxy
# with custom allowed domain: CORSPROXY_ALLOWED_DOMAIN=api.com
```

### Docker

It is also possible to run the cors proxy in a docker container:

```
# Build image
docker build -t corsproxy .

# Run container
docker run -p 1337:1337 --name corsproxy -d corsproxy
```

## Usage

The cors proxy will start at http://localhost:1337.
To access another domain, use the domain name (including port) as the first folder, e.g.

- http://localhost:1337/localhost:3000/sign_in
- http://localhost:1337/my.domain.com/path/to/resource
- etc etc

By default the cors proxy will only answer requests sent to localhost. To use another domain (e.g. machine name) set an enviroment variable CORSPROXY_HOST to the required value before launching.

## License

MIT
