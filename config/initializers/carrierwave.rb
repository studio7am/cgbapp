CarrierWave.configure do |config|
  config.ftp_host = "188.225.74.162"
  config.ftp_port = 21
  config.ftp_user = "ben"
  config.ftp_passwd = "cgb"
  config.ftp_folder = "/"
  config.ftp_url = "http://188.225.74.162/uploads"
  config.ftp_passive = false # false by default
end