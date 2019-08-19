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
./dotnet-install.sh --version ${DOTNET_VERSION} --install-dir "/Users/Shared/.dotnet"

PATH="/Users/Shared/.dotnet:${PATH}"
# Throw `PATH` to the next step (AzDO specific)
echo '##vso[task.setvariable variable=PATH;]'$PATH
echo "PATH:"
echo $PATH

echo "====================================================="

echo ".NET Core version: $(dotnet --version)"
