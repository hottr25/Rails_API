class Term < ApplicationRecord
    validates :name, uniqueness: true
    validates :name, presence: true
    validates :what, presence: true
    validates :why, presence: true
    validates :how, presence: true
    validates :example, presence: true
    validates :type_id, presence: true
    belongs_to :type
end
