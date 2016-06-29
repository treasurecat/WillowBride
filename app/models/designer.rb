class Designer < ActiveRecord::Base
  has_many :dresses, autosave: true, dependent: :destroy
  accepts_nested_attributes_for :dresses,
  :reject_if => :reject_dresses,
  allow_destroy: true
  validates_associated :dresses

  validates :name,
            :presence => true

  has_attached_file :main_image, styles: { display: ["484x484>", :png], thumb: ["184x184>", :png] }
  validates_attachment :main_image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }

end
