require "pry"
# your code goes here
def begins_with_r(array)
  array.each {|x| x[0]!="r" ? (return false) : nil}
  return true
end

def contain_a(array)
  hasa = []
  array.collect {|x| if x.include?("a") then (hasa << x) end}
  return hasa
end

def first_wa(array)
  array.each {|x| if x.to_s[0..1] == "wa" then (return x) end}
end

def remove_non_strings(array)
  isString = []
  array.each {|x| if x.class == String then (isString << x) end}
  return isString
end

def count_elements(array)
  array.uniq.each {|x| count = 0
    array.each {|x2| if x2 == x then count += 1 end}
      x[:count] = count}
end

def merge_data(keys, data)
  merged = []
  keys.each {|y| data.first.each {|key,value| if y.values[0] == key then (merged << y.merge(value)) end}}
  return merged
end

def find_cool(array)
  cools = []
  array.each {|x| x[:temperature] == "cool" ? cools << x : nil}
  return cools
end

def organize_schools(hash)
  locations = []
  hash.each {|h,val| val.each {|x,y| locations << y}}
  locations = locations.uniq
  final = Hash[locations.map{|x|[x,[]]}]
  #{"NYC"=>[], "SF"=>[], "Chicago"=>[]}
  hash.each do |h, location|
    # h == name of school //// location === full hash (e.g.) {:location=>"NYC"})
    if location[:location] == "NYC"
      final["NYC"] << h
    elsif location[:location] == "SF"
      final["SF"] << h
    else location[:location] == "Chicago"
      final["Chicago"] << h
    end
  end
  return final
end
