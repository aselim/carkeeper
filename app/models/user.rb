class User < ActiveRecord::Base
acts_as_authentic 
has_many :cars, :dependent => :destroy

def self.pagesearch(page, order, login , first, last)
  paginate :per_page => 20, :page => page,
	   :conditions => ['login like ? and first like ? and last like ? ', "%#{login}%","%#{first}%","%#{last}%"],
           :order => order
end
end
