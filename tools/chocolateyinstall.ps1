$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://static.infomaniak.ch/photofiltre/utils/pf7/pf7-setup-en-7.2.1.exe' # download url, HTTPS preferred
$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  softwareName  = 'photofiltre7-en*'
  silentArgs   = '/S'
  validExitCodes= @(0)
  checksum = 'B20523A0A26FE2FE2A9A623E75C57C9CFA1C524A7C197CC7E05460AE8C8EE5E7'
  checksumType = 'sha256'
} 
Install-ChocolateyPackage @packageArgs
