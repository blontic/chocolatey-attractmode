
$ErrorActionPreference = 'Stop'

$attractVersion   = 'v2.3.0'
$attractDirectory = "c:\attract-$attractVersion"

$url32            = "https://github.com/mickelson/attract/releases/download/$attractVersion/attract-$attractVersion-win32.zip"
$checksum32       = '3C326B9EA920ECD74BCF28F4AF02DBC6'
$url64            = "https://github.com/mickelson/attract/releases/download/$attractVersion/attract-$attractVersion-win64.zip"
$checksum64       = '3A1A221D21BF11A0F7C5288BCA2DAC0A'

$packageArgs = @{
  packageName     = 'attractmode.portable'
  url             = $url32
  url64bit        = $url64
  checksum        = $checksum32
  checksumType    = 'md5'
  checksum64      = $checksum64
  checksumType64  = 'md5'
  unzipLocation   = $attractDirectory
}

Install-ChocolateyZipPackage @packageArgs
