class Designer < ActiveRecord::Base
  has_many :dresses, autosave: true, dependent: :destroy
  accepts_nested_attributes_for :dresses,
  :reject_if => :reject_dresses,
  allow_destroy: true
  validates_associated :dresses

  validates :name,
            :presence => true

  has_attached_file :main_image, styles: { display: ["600x600^", :png], thumb: ["150x150^", :png] }, :convert_options => { :display => "-quality 70 -interlace Plane", :thumb => "-quality 70 -interlace Plane" }
  validates_attachment :main_image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }

end
