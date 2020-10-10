# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program

def find(id)
  @candidates.find { |candidate| candidate[:id] == id }
end

def experienced?(candidate)
  candidate[:years_of_experience] >= 2
end

# More methods will go below
def high_github_points(candidate)
  candidate[:github_points] >= 100 ? true : false
end

def known_languages(candidate)
  candidate[:languages].include?("Python") || candidate[:languages].include?("Ruby") ? true : false
end

def application_date(candidate)
  candidate[:date_applied] >= 15.days.ago.to_date ? true : false
end

def applicant_age(candidate)
  candidate[:age] > 17 ? true : false
end

def qualified_candidates(candidates)
  @candidates.select { |candidate| experienced?(candidate) && high_github_points(candidate) && known_languages(candidate) && application_date(candidate) && applicant_age(candidate)}
end

def ordered_by_qualifications(candidates)
  candidate_sort = @candidates.sort_by { |candidate| [candidate[:years_of_experience], candidate[:github_points]] }
  return candidate_sort.reverse
end