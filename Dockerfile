FROM jamiejackson/solr5-dih-dyn-pwd:latest
LABEL maintainer "jamiejaxon@gmail.com"

ENV maria_jar_version=1.5.4
ENV maria_jar=mariadb-java-client-${maria_jar_version}.jar
ENV maria_url=https://code.mariadb.com/connectors/java/connector-java-${maria_jar_version}/${maria_jar}

ENV server_root_path=/opt/solr/server
ENV lib_path=${server_root_path}/lib

ADD ${maria_url} ${lib_path}
