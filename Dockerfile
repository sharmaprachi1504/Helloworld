FROM mcr.microsoft.com/dotnet/aspnet:6.0
WORKDIR /app
COPY /mnt/agent/work/ec21465ace67c96d/bin/Debug/netcoreapp1.0/app
ENTRYPOINT ["dotnet","dotnet-core-helloWorld.dll"]
