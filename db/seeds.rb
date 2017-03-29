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

Therapy.create([{
                 title: 'Speech Emission',
                 content: 'Before attempting to decrease nasality, the child needs to be made aware of the difference between nasality and normal
                  speech and resonance. This can be done as follows: Have the child listen to recordings of normal speech and nasal speech, and identify each.
                  Simulate oral and nasal speech and have the child identify normal versus abnormal.'
               },
                {
                  title: 'Articulation',
                  content: 'Compensatory productions are easiest to correct AFTER surgical correction. Once surgery is done to
                  correct the abnormal structure, speech therapy is necessary to correct the abnormal function.'
                },
                {
                  title: 'Sound Recognition',
                  content: 'Typically, many children with repaired clefts that involve the gum ridge (alveolar ridge) will distort
                  the sounds "s  z  ch  j (as in “judge”) sh zh."  These sounds are called "sibilants."  To produce these sounds, air must flow over
                  the tongue and strike the front teeth.This causes the air to become turbulent (a hissing-like sound).'
                }])

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
