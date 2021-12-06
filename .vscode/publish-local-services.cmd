dotnet restore ../trnsact-communicate-api/trnsACT.Communicate.csproj
dotnet build ../trnsact-communicate-api/trnsACT.Communicate.csproj --no-restore --configuration Release
dotnet publish ../trnsact-communicate-api/trnsACT.Communicate.csproj --no-build --configuration Release --framework net6.0 /p:PublishProfile=../trnsact-communicate-api/Properties/PublishProfiles/FolderProfile.pubxml
dotnet restore ../trnsact-manage-api/trnsACT.Manage.csproj
dotnet build ../trnsact-manage-api/trnsACT.Manage.csproj --no-restore --configuration Release
dotnet publish ../trnsact-manage-api/trnsACT.Manage.csproj --no-build --configuration Release --framework net6.0 --output \\webserver\Websites\Manage
dotnet restore ../trnsact-communicate-api/trnsACT.Communicate.csproj
dotnet build ../trnsact-communicate-api/trnsACT.Communicate.csproj --no-restore --configuration Release
dotnet publish ../trnsact-communicate-api/trnsACT.Communicate.csproj --no-build --configuration Release --framework net6.0 --output \\webserver\Websites\Communicate