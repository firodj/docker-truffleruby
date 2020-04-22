FROM oracle/graalvm-ce:20.0.0-java8

RUN yum install -y openssl \
	zlib \
	libxml2-devel \
	libxslt-devel

RUN gu install -c org.graalvm.ruby

RUN /opt/graalvm-ce-java8-20.0.0/jre/languages/ruby/lib/truffle/post_install_hook.sh

# don't create ".bundle" in all our apps
ENV GEM_HOME /usr/local/bundle
ENV BUNDLE_SILENCE_ROOT_WARNING=1 \
	BUNDLE_APP_CONFIG="$GEM_HOME"
ENV PATH $GEM_HOME/bin:$PATH
# adjust permissions of a few directories for running "gem install" as an arbitrary user
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"

CMD [ "irb" ]
