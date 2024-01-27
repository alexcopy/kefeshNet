# Используем .NET Core runtime как базовый образ
FROM mcr.microsoft.com/dotnet/core/runtime:3.1


# Копируем файлы API
WORKDIR /app/Api
COPY ./Kafeshka.Api/bin/Debug/netcoreapp3.1/publish/ ./

# Указываем порт для API
EXPOSE 5000

# Запускаем десктопное приложение
CMD ["./MyApp.Desktop"]

