class Dress < ActiveRecord::Base
  belongs_to :designer, foreign_key: "designer_id"
  has_many :dress_images, autosave: true, dependent: :destroy
  accepts_nested_attributes_for :dress_images,
      :reject_if => :reject_dresses,
      allow_destroy: true
  validates_associated :dress_images

  validates :location, presence: true
  validates :name, presence: true, length: { minimum: 4 }

end
