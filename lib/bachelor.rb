require 'pry'

def get_first_name_of_season_winner(data, season)
  celeb = ""
  data.each do |season_number, data_array|
    if season_number == season 
    data_array.each do |person|
      if person["status"] == "Winner"
        celeb = person["name"]
    end 
    end 
  end 
end 
celeb.split.first
end

def get_contestant_name(data, occupation)
  celeb = ""
  data.each do |season_number, data_array|
    data_array.each do |person|
      if person["occupation"] == occupation
        celeb = person["name"]
      end 
    end 
  end
  celeb
end

def count_contestants_by_hometown(data, hometown)
  array_of_contestants = []
  data.each do |season_number, data_array|
    data_array.each do |person|
      if person["hometown"] == hometown
        array_of_contestants << person["name"]
      end 
    end 
  end
  array_of_contestants.length
end

def get_occupation(data, hometown)
  occupation = ""
  data.each do |season_number, data_array|
    data_array.each do |person|
      if person["hometown"] == hometown
        occupation = person["occupation"]
      end 
    end 
  end
  occupation
end

def get_average_age_for_season(data, season)
 total = 0 
 array_of_ages = []
  data.each do |season_number, data_array|
    if season_number == season 
      data_array.each do |person|
        array_of_ages << person["age"].to_i
      end 
    end 
  end 
array_of_ages.each do |age|
  total += age  
end
(total/array_of_ages.length).ceil
end
