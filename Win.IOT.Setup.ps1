$certPath = "ssl.cer"
$sensorCapturePort = 8175

Import-Certificate -FilePath $certPath -CertStoreLocation cert:\LocalMachine\Root

New-NetFirewallRule -DisplayName "Sensor Capture Port" -Direction Inbound -Action allow -LocalPort $sensorCapturePort -Protocol TCP