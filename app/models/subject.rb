class Subject < ActiveRecord::Base
    has_many :registers
    has_many :professors, through: :registers
end
