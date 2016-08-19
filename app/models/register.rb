class Register < ActiveRecord::Base
    belongs_to :professor
    belongs_to :subject
end
