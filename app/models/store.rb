class Store < ActiveRecord::Base
    has_attached_file :shop_image
    validates_attachment :shop_image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
end
