# Docker-Proxies
[![Build Status](https://travis-ci.org/gitchs/docker-proxies.svg?branch=master)](https://travis-ci.org/gitchs/docker-proxies)

## Description
1. startup sslocal as a local socks5 proxy server.
2. startup polipo as http proxy.
3. polipo use sslocal as upstream.
4. now we have a socks5 proxy and a http/https proxy.


## Environment
1. SHADOWSOCKS_SERVER=""
2. SHADOWSOCKS_PORT=""
3. SHADOWSOCKS_CIPHER="aes-256-cfb"
4. SHADOWSOCKS_PASSWORD=""
5. SHADOWSOCKS_TIMEOUT="300"
6. SHADOWSOCKS_FAST_OPEN_ENABLE="true"

## Quick Start
```bash
cp docker-compose-sample.yml docker-compose.yml
vi docker-compose.yml # fill in ssserver info
docker-compose up -d 
```
