FROM fischerscode/flutter
USER root:root
EXPOSE 4040
RUN apt-get update
RUN apt-get install -y fonts-droid-fallback lib32stdc++6 python3 psmisc
USER flutter:flutter
RUN flutter channel master
RUN flutter upgrade
RUN flutter config --enable-web
RUN flutter doctor -v
WORKDIR /var/www/app
ENTRYPOINT [ "./server.sh" ]