class DressImage < ActiveRecord::Base
	has_attached_file :image, styles: { display: ["800x600>", :png], thumb: ["300x200>", :png] }
  validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
end
