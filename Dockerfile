FROM traffmonetizer/cli:latest
ENV ASPNETCORE_URLS=http://+:80 DOTNET_RUNNING_IN_CONTAINER=true DOTNET_SYSTEM_GLOBALIZATION_INVARIANT=true
RUN apk add --no-cache\
         ca-certificates\
                 krb5-libs\
         libgcc\
         libintl\
         libssl3\
         libstdc++\
         zlib
ENV DOTNET_CLI_TELEMETRY_OPTOUT=1
WORKDIR /app
WORKDIR /app
CMD ["start", "accept", "--token", "pof9eoh14ABvGjn8hbAidvKPC4u8L5LtRgyCV/4YYRQ="]
