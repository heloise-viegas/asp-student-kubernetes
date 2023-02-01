FROM mcr.microsoft.com/dotnet/sdk:6.0
COPY . ./src
WORKDIR /src
RUN dotnet build -o /app
RUN dotnet publish -o /publish
WORKDIR /app
ENV ASPNETCORE_URLS=http://+:5000
EXPOSE 5000
CMD ["./myWebApp"]

    
