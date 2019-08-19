echo "Mono version:"
mono --version

echo ".NET Core version: $(dotnet --version)"

echo "SDK version: $(cat /Library/Frameworks/Xamarin.iOS.framework/Versions/Current/Version)"

echo "Available .NET Core runtimes:"
dotnet --list-runtimes

DOTNET_VERSION="2.2.105"
echo "======== Switch .Net Core version to ${DOTNET_VERSION} ========"

wget https://dot.net/v1/dotnet-install.sh
chmod +x dotnet-install.sh
./dotnet-install.sh --version ${DOTNET_VERSION}

export PATH="${~}/.dotnet:${PATH}"

echo "====================================================="

echo ".NET Core version: $(dotnet --version)"
