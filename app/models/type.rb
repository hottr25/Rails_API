class Type < ApplicationRecord
    validates :name, uniqueness: true
    validates :name, presence: true
    has_many :terms , dependent: :destroy
end
