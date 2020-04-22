FROM oracle/graalvm-ce:20.0.0-java8

RUN yum install -y openssl \
	zlib \
	libxml2-devel \
	libxslt-devel

RUN gu install -c org.graalvm.ruby

RUN /opt/graalvm-ce-java8-20.0.0/jre/languages/ruby/lib/truffle/post_install_hook.sh

CMD [ "irb" ]
