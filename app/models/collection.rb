class Collection < ActiveRecord::Base
	belongs_to :designer, foreign_key: "designer_id"

	validates :collection,
            :presence => true
end
