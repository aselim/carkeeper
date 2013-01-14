Given /the following cars exist/ do |cars_table|
  cars_table.hashes.each do |car|
    # each returned element will be a hash whose key is the table header.
    # you should arrange to add that car to the database here.
    if car[:brand]!='brand'
	a=Car.new
	a.brand=car[:brand]
	a.carmodel=car[:carmodel]
	a.year=car[:year]
    end
  end
  #flunk "Unimplemented"
end


# Make sure that one string (regexp) occurs before or after another one
#   on the same page

Then /I should see "(.*)" before "(.*)"/ do |e1, e2|
  #  ensure that that e1 occurs before e2.
  #  page.content  is the entire content of the page as a string.
  #flunk "Unimplemented"
  page.body =~ /#.*{e1}.*#{e2}/ 
end

