$ErrorActionPreference = 'Stop';

$packageName= 'ozcode'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://www.oz-code.com/files/OzCode_2.0.0.1029.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url

  validExitCodes= @(0, 3010, 1641)
  silentArgs   = '/S'

  softwareName  = 'OzCode'
  checksum      = 'AB0468A0483AF7C254216F1FC0D1A9CC'
  checksumType  = 'md5'
  checksum64    = ''
  checksumType64= 'md5'
}

Install-ChocolateyPackage @packageArgs