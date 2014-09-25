class Pageimage < ActiveRecord::Base
	mount_uploader :pgimg, PgimgUploader
end
