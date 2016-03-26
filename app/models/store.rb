class Store < ActiveRecord::Base
    has_attached_file :shop_image
    has_attached_file :gallery_image
    has_attached_file :the_experience_image
    validates_attachment :shop_image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
    validates_attachment :gallery_image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
    validates_attachment :the_experience_image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
end
