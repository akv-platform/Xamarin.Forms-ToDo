DOTNET_VERSION="2.2.300"
echo "======== Switch .Net Core version to ${DOTNET_VERSION} ========"

# sudo rm -rf "/Users/vsts/.dotnet"

wget https://dot.net/v1/dotnet-install.sh
chmod +x dotnet-install.sh
./dotnet-install.sh --version ${DOTNET_VERSION} --install-dir "/Users/Shared/.dotnet"

export PATH="/Users/Shared/.dotnet:$PATH" 
# Throw `PATH` to the next steps (AzDO specific)
echo '##vso[task.prependpath]'$PATH