echo "Mono version:"
mono --version

echo ".NET Core version: $(dotnet --version)"

echo "SDK version: $(cat /Library/Frameworks/Xamarin.iOS.framework/Versions/Current/Version)"

echo "Available .NET Core runtimes:"
dotnet --list-runtimes

echo "Path:"
echo $PATH