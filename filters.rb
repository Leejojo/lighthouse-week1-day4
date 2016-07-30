# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program

def find(id)

  array = []
  
  @candidates.each do |x|
    if x[:id] == id
      array.push(x)
    end
  end
  

  return array.length > 0 ? array : nil
end
pp find(15)

###################

def experienced?(candidate)
  candidate[:years_of_experience] >= 2
end


########################

def over_requisite_github_points?(candidate)
  candidate[:github_points] >= 100
end


######################

def ruby_or_python(candidate)
  (candidate[:languages].include?("Ruby") || candidate[:languages].include?("Python"))
end

####################

def applied(candidate)
  candidate[:date_applied] >= 5.days.ago.to_date
end

#######################

def age(candidate)
  candidate[:age] >= 18
end

################################

def qualified_candidates(candidates)
  candidates.select do |candidate|
    experienced?(candidate) &&
    over_requisite_github_points?(candidate) &&
    (candidate[:languages].include?("Ruby") || candidate[:languages].include?("Python")) &&
    candidate[:date_applied] >= 5.days.ago.to_date &&
    candidate[:age] >= 18
  end
end

################################

def ordered_by_qualifications(candidates)


  candidates.sort do |a,b| 
    years = b[:years_of_experience] <=> a[:years_of_experience]
    if years == 0
      b[:github_points] <=> a[:github_points]
    else
      years
    end
  end

end
 

