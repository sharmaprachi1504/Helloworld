FROM mcr.microsoft.com/dotnet/aspnet:5.0
WORKDIR /app
COPY bin/Debug/netcoreapp1.0/ .
ENTRYPOINT ["dotnet","dotnet-core-helloWorld.dll"]
