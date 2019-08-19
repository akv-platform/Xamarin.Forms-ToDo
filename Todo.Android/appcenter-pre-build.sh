echo "Mono version:"
mono --version

echo ".NET Core version: $(dotnet --version)"

echo "SDK version: $(cat /Library/Frameworks/Xamarin.iOS.framework/Versions/Current/Version)"

echo "Available .NET Core runtimes:"
dotnet --list-runtimes

DOTNET_VERSION="2.2.105"
echo "======== Switch .Net Core version to ${DOTNET_VERSION} ========"

echo '{"sdk":{"version":"'"${DOTNET_VERSION}"'"}}' > global.json

echo "====================================================="

echo "Mono version:"
mono --version

echo ".NET Core version: $(dotnet --version)"

echo "SDK version: $(cat /Library/Frameworks/Xamarin.iOS.framework/Versions/Current/Version)"
