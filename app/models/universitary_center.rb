class UniversitaryCenter < ApplicationRecord
    belongs_to :sede 
    validates :universitary_center_name, presence: true
    validates :sede_id, presence: true

end
