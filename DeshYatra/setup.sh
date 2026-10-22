#!/bin/bash
set -e
APP="$(cd "$(dirname "$0")" && pwd)"
WEBAPP="$APP/src/main/webapp"
TOMCAT="$HOME/apache-tomcat-9.0.98"

if [ ! -d "$TOMCAT" ]; then
  cd ~
  wget -q https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.98/bin/apache-tomcat-9.0.98.tar.gz
  tar xzf apache-tomcat-9.0.98.tar.gz
fi

mkdir -p "$WEBAPP/WEB-INF/classes"
javac -cp "$TOMCAT/lib/servlet-api.jar:$WEBAPP/WEB-INF/lib/*" \
  -d "$WEBAPP/WEB-INF/classes" $(find "$APP/src/main/java" -name "*.java")

rm -rf "$TOMCAT/webapps/ROOT"
ln -s "$WEBAPP" "$TOMCAT/webapps/ROOT"
"$TOMCAT/bin/catalina.sh" run
