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
# /Users/vsts/.dotnet/tools:/Users/vsts/hostedtoolcache/dotnet:/Users/vsts/Library/Android/sdk/android-ndk-r15c:/Library/Frameworks/Mono.framework/Versions/6_0_0/bin:/Users/vsts/.dotnet/tools:/Users/vsts/hostedtoolcache/dotnet:/Users/Shared/.dotnet:/Users/vsts/.dotnet/tools:/Users/vsts/hostedtoolcache/dotnet:/Library/Frameworks/Mono.framework/Versions/4/bin:/usr/local/lib/ruby/gems/2.6.0/bin:/usr/local/opt/ruby/bin:/usr/local/opt/curl/bin:/usr/local/bin:/usr/local/sbin:/Users/vsts/bin:/Users/vsts/.yarn/bin:/usr/local/go/bin:/Users/vsts/Library/Android/sdk/tools:/Users/vsts/Library/Android/sdk/platform-tools:/Users/vsts/Library/Android/sdk/ndk-bundle:/Library/Frameworks/Mono.framework/Versions/Current/Commands:/usr/bin:/bin:/usr/sbin:/sbin:/Users/vsts/.azcopy