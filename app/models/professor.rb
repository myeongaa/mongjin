class Professor < ActiveRecord::Base
    has_many :registers
    has_many :subjects, through: :registers
end
