@setlocal
@pushd %~dp0
@set _P=%~dp0build\Release\publish

dotnet build -c Release src\test\WixToolsetTest.LightIntegration

dotnet publish -c Release -o %_P%\net461\ -r win-x86 -f net461 src\light

dotnet pack -c Release src\WixToolset.LegacyTools.InternalPackage

@popd
@endlocal
