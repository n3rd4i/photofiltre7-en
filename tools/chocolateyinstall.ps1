$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://static.infomaniak.ch/photofiltre/utils/pf7/pf7-setup-en-7.2.1.exe' # download url, HTTPS preferred
$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  softwareName  = 'photofiltre7-en*' #part or all of the Display Name as you see it in Programs and Features. It should be enough to be unique
  silentArgs   = '/S'
  validExitCodes= @(0)
}
 
Install-ChocolateyPackage @packageArgs