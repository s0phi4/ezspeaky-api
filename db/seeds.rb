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
                { name: 'Sound Recognition' }])

Video.create([{
               therapy: Therapy.first,
               name: 'Repeat and Identify',
               url: 'https://www.youtube.com/watch?v=BLuZdiX7Wrg'
             },
              {
                therapy: Therapy.first,
                name: 'Pronunciation',
                url: 'https://www.youtube.com/watch?v=ky2hngeUcUg'
              },
              {
                therapy: Therapy.find(2),
                name: 'Articulation Game',
                url: 'https://www.youtube.com/watch?v=XhuU3c5QSso'
              },
              {
                therapy: Therapy.find(2),
                name: 'S and Z',
                url: 'https://www.youtube.com/watch?v=kTAtVWsvhNA'
              },
              {
                therapy: Therapy.last,
                name: 'Escape of Air',
                url: 'https://www.youtube.com/watch?v=k1juKhiqReU'
              },
              {
                therapy: Therapy.last,
                name: 'Practice S',
                url: 'https://www.youtube.com/watch?v=gHVtHEc4PU4'
              }])
