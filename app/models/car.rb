class Car < ActiveRecord::Base
belongs_to :user
has_attached_file :pic, :styles => 
           { :medium => "300x300>", :thumb => "100x100>" }
end
