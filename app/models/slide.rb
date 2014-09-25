class Slide < ActiveRecord::Base
	mount_uploader :slimg, SlimgUploader
end
