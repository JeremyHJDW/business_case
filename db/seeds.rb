# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

BusinessCase.create(
  title: 'Comment créer une appli en Rails ?',
  client_location: BusinessCase.client_locations_list.sample,
  client_industry: BusinessCase.client_industries_list.sample,
  client_size: BusinessCase.client_sizes_list.sample,
  client_position: BusinessCase.client_positions_list.sample,
  user_expertise: BusinessCase.user_expertises_list.sample,
  user_methodology: "Le flair et l'intuition",
  client_problem: 'Pas assez de marges',
  client_results: 'Au top !'
)
