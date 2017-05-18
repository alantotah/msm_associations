class Actor < ApplicationRecord
  # - name: must be present; must be unique in combination with dob
  validates :name, :presence => true, :uniqueness => { :scope => :dob}


  has_many :actors, :class_name => "Character", :foreign_key => "actor_id"

  # - dob: no rules
  # - bio: no rules
  # - image_url: no rules
end
