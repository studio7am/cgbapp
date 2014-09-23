class Job < ActiveRecord::Base
	mount_uploader :dwnld, DwnldUploader
end

