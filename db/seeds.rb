# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the
# db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Therapy.create([{ name: 'Speech Emission' },
                { name: 'Articulation' },
                { name: ' Air Flow' }])

Video.create([{
               therapy: Therapy.first,
               name: 'vowels',
               url: 'https://www.youtube.com/watch?v=BGa3AqeqRy0&list=PLjxkFbiVAu_OLWF7tv-eY9ehsXLyX2D4y'
             }])
