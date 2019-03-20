Build xdebug
====

```
docker run --rm -it --entrypoint sh -v /tmp/build:/build php:7.3-alpine
docker-php-ext-install pcntl

$ cp /usr/local/lib/php/extensions/no-debug-non-zts-20180731/pcntl.so /build/pcntl.so
```
