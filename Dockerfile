# The `FROM` instruction specifies the base image. You are
# extending the `microsoft/aspnet` image.
FROM microsoft/aspnet
ENTRYPOINT ["powershell"]
WORKDIR /inetpub/wwwroot
# The final instruction copies the site you published earlier into the container.
COPY /bin/Release/Publish/ /inetpub/wwwroot