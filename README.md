# Docker GraalVM TruffleRuby

```
docker build -t truffleruby .
docker run -it truffleruby
```

or

```
docker run -it truffleruby ruby -v
```

For tagging before push:

docker tag truffleruby firodj/truffleruby:20.0-oraclelinux

docker push firodj/truffleruby:20.0-oraclelinux

* https://github.com/oracle/truffleruby
