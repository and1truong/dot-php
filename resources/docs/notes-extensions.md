Build xdebug
====

## xdebug

```
docker run --rm -it --entrypoint sh -v /tmp/build:/build php:7.3-alpine

apk add --no-cache $PHPIZE_DEPS
pecl install xdebug-2.7.0
cp /usr/local/lib/php/extensions/no-debug-non-zts-20180731/xdebug.so /build
```

## pcntl

```
docker run --rm -it --entrypoint sh -v /tmp/build:/build php:7.3-alpine
docker-php-ext-install pcntl

$ cp /usr/local/lib/php/extensions/no-debug-non-zts-20180731/pcntl.so /build/pcntl.so
```

## bcmatch

```
docker run --rm -it --entrypoint sh -v /tmp/build:/build php:7.3-alpine
docker-php-ext-install pcntl

$ cp /usr/local/lib/php/extensions/no-debug-non-zts-20180731/bcmath.so /build/
```
