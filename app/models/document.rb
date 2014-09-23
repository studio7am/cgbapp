class Document < ActiveRecord::Base
	mount_uploader :download_link, DownloadLinkUploader

end
