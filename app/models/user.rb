class User < ActiveRecord::Base
acts_as_authentic 
has_many :cars, :dependent => :destroy

def self.pagesearch(page, order)
  paginate :per_page => 20, :page => page,
           :order => order
end
end
