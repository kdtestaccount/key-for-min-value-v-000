# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  
  overall_lowest_price = 0
  overall_lowest_person = ""
  last_price = 0
  last_name = ""
  if name_hash != {}
    
    name_hash.each do |name, price|
      current_price = price
      current_name = name
    
      if current_price < last_price && last_price != 0
        overall_lowest_person = current_name
        overall_lowest_price = current_price
      
      elsif current_price > last_price && last_price != 0
        overall_lowest_person = last_name
        overall_lowest_price = last_price
      
      elsif last_price == 0
        last_price = current_price
        last_name = current_name
        overall_lowest_person = current_name
        overall_lowest_price = current_price
      else
        nil
      end
    end
    overall_lowest_person
  
  else
     nil
  end
end

# veggies = {"apple" => -45, "carrot" => -44.5, "banana" => -44.9}
# key_for_min_value(veggies)