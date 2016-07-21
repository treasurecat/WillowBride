class Dress < ActiveRecord::Base
  belongs_to :designer, foreign_key: "designer_id"
  has_many :dress_images, autosave: true, dependent: :destroy
  accepts_nested_attributes_for :dress_images,
      :reject_if => :reject_dresses,
      allow_destroy: true
  validates_associated :dress_images

  validates :location, presence: true
  validates :name, presence: true, length: { minimum: 2 }

  has_attached_file :main_image, styles: { display: ["800x600>", :png], thumb: ["300x200>", :png] }
  validates_attachment :main_image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }

end
