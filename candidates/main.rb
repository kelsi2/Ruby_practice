# This is the main entrypoint into the program
# It requires the other files/gems that it needs
require 'pp'
require './candidates'
require './filters'

## Your test code can go here

pp @candidates

pp find(5)
pp experienced?(@candidates[1])
pp high_github_points(@candidates[3])
pp known_languages(@candidates[2])
pp application_date(@candidates[5])
pp applicant_age(@candidates[3])

pp ordered_by_qualifications(@candidates[0])
pp qualified_candidates(@candidates)