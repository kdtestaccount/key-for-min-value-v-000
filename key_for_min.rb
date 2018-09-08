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
    
      if current_price < last_price 
        overall_lowest_person = name_hash
        overall_lowest_price = current_price
      
      elsif current_price > last_price
        overall_lowest_person = name_hash
        overall_lowest_price = last_price
      
      elsif last_price == ""
        last_price = current_price
        last_name = current_name
        overall_lowest_person = name_hash
        overall_lowest_price = current_price
      else
        nil
      end
    puts overall_lowest_person
    end
  else
     nil
  end
end


def key_for_min_value(name_hash)