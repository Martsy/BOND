# frozen_string_literal: true

# rubocop:disable Metrics/LineLength/BlockLength

require 'rails_helper'

RSpec.describe 'actors index page', type: :feature do
  describe 'main' do
    before(:each) do
      @actor1 = Actor.create!(name: 'Sean Connery', age: 32, nationality: 'Scottish', image_url: 'https://m.media-amazon.com/images/M/MV5BMzcwNTM4MzctYjQzMi00NTA2LTljYWItNTYzNmE1MTYxN2RlXkEyXkFqcGdeQXVyMDI2NDg0NQ@@._V1_SY1000_CR0,0,779,1000_AL_.jpg')
      @actor2 = Actor.create!(name: 'George Lazenby', age: 30, nationality: 'Australian', image_url: 'https://m.media-amazon.com/images/M/MV5BMGI4YTY3NzItNzQ0Mi00OTU2LWJlYTItYzkzMGFiYTcwNjExXkEyXkFqcGdeQXVyNjUwNzk3NDc@._V1_.jpg')
      @actor3 = Actor.create!(name: 'Roger Moore', age: 46, nationality: 'English', image_url: 'https://m.media-amazon.com/images/M/MV5BMTQ3Njg5MDkxNl5BMl5BanBnXkFtZTYwNjczMzU0._V1_UY317_CR1,0,214,317_AL_.jpg')
      @actor4 = Actor.create!(name: 'Timothy Dalton', age: 41, nationality: 'Welsh', image_url: 'https://m.media-amazon.com/images/M/MV5BNDE5NDA1OTA4NV5BMl5BanBnXkFtZTcwMDE3NDk0NA@@._V1_SY1000_CR0,0,671,1000_AL_.jpg')
      @actor5 = Actor.create!(name: 'Pierce Brosnan', age: 49, nationality: 'Irish', image_url: 'https://m.media-amazon.com/images/M/MV5BMTMwMjMxNzM4OV5BMl5BanBnXkFtZTcwNDM5NzkxMw@@._V1_UY317_CR9,0,214,317_AL_.jpg')
      @actor6 = Actor.create!(name: 'Daniel Craig', age: 38, nationality: 'English', image_url: 'https://m.media-amazon.com/images/M/MV5BMjEzMjk4NDU4MF5BMl5BanBnXkFtZTcwMDMyNjQzMg@@._V1_UX214_CR0,0,214,317_AL_.jpg')

      @movie1 = @actor1.movies.create!(title: 'Dr. No', year_released: 1962, actor_id: actor1.id, image_url: 'https://m.media-amazon.com/images/M/MV5BMTk4YzdjOTgtNjM4NS00YjljLThhM2QtYTI3OTQ0OGVhNTMxXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_SY1000_CR0,0,659,1000_AL_.jpg')
      # actor1.movies.create!(title: 'Dr. No', year_released: 1962, image_url: '' )
      @movie2 = @actor1.movies.create!(title: 'From Russia with Love', year_released: 1963, image_url: 'https://m.media-amazon.com/images/M/MV5BMTQxNTIzMTExN15BMl5BanBnXkFtZTcwODI4MDgzNA@@._V1_SY1000_CR0,0,666,1000_AL_.jpg')
      @movie3 = @actor1.movies.create!(title: 'Goldfinger', year_released: 1964, image_url: 'https://m.media-amazon.com/images/M/MV5BMTQ2MzE0OTU3NV5BMl5BanBnXkFtZTcwNjQxNTgzNA@@._V1_SY1000_CR0,0,666,1000_AL_.jpg')
      @movie4 = @actor1.movies.create!(title: 'Thunderball', year_released: 1965, image_url: 'https://m.media-amazon.com/images/M/MV5BZGNhYjM3ZmQtMTRlZS00YmZiLWFhYjktYWE3ZTk0MGY0MTIwXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_SY1000_CR0,0,668,1000_AL_.jpg')
      @movie5 = @actor1.movies.create!(title: 'You Only Live Twice', year_released: 1967, image_url: 'https://m.media-amazon.com/images/M/MV5BZWU0MzNlZTUtNGIxYi00NzFiLWJkOTMtMzRlYmQxN2RlZmZjXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_SY1000_CR0,0,663,1000_AL_.jpg')
      @movie6 = @actor2.movies.create!(title: "On Her Majesty's Secret Service", year_released: 1969, image_url: 'https://m.media-amazon.com/images/M/MV5BMTc0NDYzMjgyNV5BMl5BanBnXkFtZTcwMjgyMzY0NA@@._V1_SY1000_CR0,0,666,1000_AL_.jpg')
      @movie7 = @actor1.movies.create!(title: 'Diamonds are Forever', year_released: 1971, image_url: 'https://m.media-amazon.com/images/M/MV5BMTM0MDI2MzYzOF5BMl5BanBnXkFtZTcwNDY4NTMzNA@@._V1_SY1000_CR0,0,666,1000_AL_.jpg')
      @movie8 = @actor3.movies.create!(title: 'Live and Let Die', year_released: 1973, image_url: 'https://m.media-amazon.com/images/M/MV5BMzY0M2MzODYtZDU5Yy00YTg2LWJmMGQtNmY1OWZiYjlmNzY0XkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_SY1000_CR0,0,670,1000_AL_.jpg')
      @movie9 = @actor3.movies.create!(title: 'The Man with the Golden Gun', year_released: 1974, image_url: 'https://m.media-amazon.com/images/M/MV5BYjY3YmM1MTItMWE0NC00NjFmLWFkMDgtMWFiZjY5NzQyZGVjXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_SY1000_CR0,0,644,1000_AL_.jpg')
      @movie10 = @actor3.movies.create!(title: 'The Spy Who Loved Me', year_released: 1977, image_url: 'https://m.media-amazon.com/images/M/MV5BNDk3ODM2NDgtMGE3Ni00ZGVhLTk2ZTctN2JkMDVkMmRhNDQ5XkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_SY1000_CR0,0,655,1000_AL_.jpg')
      @movie11 = @actor3.movies.create!(title: 'Moonraker', year_released: 1979, image_url: 'https://m.media-amazon.com/images/M/MV5BMjQyMjUyNzY4MF5BMl5BanBnXkFtZTcwNzIyMzY0NA@@._V1_SY1000_CR0,0,666,1000_AL_.jpg')
      @movie12 = @actor3.movies.create!(title: 'For Your Eyes Only', year_released: 1981, image_url: 'https://m.media-amazon.com/images/M/MV5BOTNmMmUwNDctNjQ1OC00NzAwLThkM2QtN2MzOWE0OWU1MmJiXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_SY1000_CR0,0,658,1000_AL_.jpg')
      @movie13 = @actor3.movies.create!(title: 'Octopussy', year_released: 1983, image_url: 'https://m.media-amazon.com/images/M/MV5BMjI2MDE0NjE1NV5BMl5BanBnXkFtZTcwNjYyMzY0NA@@._V1.._SY1000_CR0,0,666,1000_AL_.jpg')
      @movie14 = @actor1.movies.create!(title: 'Never Say Never Again', year_released: 1983, image_url: 'https://m.media-amazon.com/images/M/MV5BMTM1NjgzMDkwOF5BMl5BanBnXkFtZTcwMzM4NzI0NA@@._V1_SY1000_CR0,0,666,1000_AL_.jpg')
      @movie15 = @actor3.movies.create!(title: 'A View to a Kill', year_released: 1985, image_url: 'https://m.media-amazon.com/images/M/MV5BMTZjNzJhOWYtMjZiNS00NmU2LTllYjAtOTAzMDk1NTI0ZTFkXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_SY1000_CR0,0,646,1000_AL_.jpg')
      @movie16 = @actor4.movies.create!(title: 'The Living Daylights', year_released: 1987, image_url: 'https://m.media-amazon.com/images/M/MV5BZjI4MjBmYzItYTY5OC00OWYzLWE0NWYtZDQxNDQxM2QzYjA4XkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_SY1000_CR0,0,659,1000_AL_.jpg')
      @movie17 = @actor4.movies.create!(title: 'License to Kill', year_released: 1989, image_url: 'https://m.media-amazon.com/images/M/MV5BODY3M2I0NGItYzJhNy00M2NiLThhMDgtNjZkNjA1NTQzMDM4XkEyXkFqcGdeQXVyNTIzOTk5ODM@._V1_SY1000_SX670_AL_.jpg')
      @movie18 = @actor5.movies.create!(title: 'Golden Eye', year_released: 1995, image_url: 'https://m.media-amazon.com/images/M/MV5BMzk2OTg4MTk1NF5BMl5BanBnXkFtZTcwNjExNTgzNA@@._V1_SY1000_CR0,0,666,1000_AL_.jpg')
      @movie19 = @actor5.movies.create!(title: 'Tomorrow Never Dies', year_released: 1997, image_url: 'https://m.media-amazon.com/images/M/MV5BMTM1MTk2ODQxNV5BMl5BanBnXkFtZTcwOTY5MDg0NA@@._V1_SY1000_CR0,0,666,1000_AL_.jpg')
      @movie20 = @actor5.movies.create!(title: 'The World Is Not Enough', year_released: 1999, image_url: 'https://m.media-amazon.com/images/M/MV5BMjA0MzUyNjg0MV5BMl5BanBnXkFtZTcwNDY5MDg0NA@@._V1_SY1000_CR0,0,666,1000_AL_.jpg')
      @movie21 = @actor5.movies.create!(title: 'Die Another Day', year_released: 2002, image_url: 'https://m.media-amazon.com/images/M/MV5BODNkYmIwYTMtYzdhNy00YWE3LThkYmEtNzA5ZTE5YmVjYzZlXkEyXkFqcGdeQXVyNTIzOTk5ODM@._V1_SY1000_SX668_AL_.jpg')
      @movie22 = @actor6.movies.create!(title: 'Casino Royale', year_released: 2006, image_url: 'https://m.media-amazon.com/images/M/MV5BMDI5ZWJhOWItYTlhOC00YWNhLTlkNzctNDU5YTI1M2E1MWZhXkEyXkFqcGdeQXVyNTIzOTk5ODM@._V1_UX182_CR0,0,182,268_AL_.jpg')
      @movie23 = @actor6.movies.create!(title: 'Quantum of Solace', year_released: 2008, image_url: 'https://m.media-amazon.com/images/M/MV5BMjZiYTUzMzktZWI5Yy00Mzk4LWFlMDgtYjRmNWU0Mzc0MzNiXkEyXkFqcGdeQXVyMjUzOTY1NTc@._V1_UX182_CR0,0,182,268_AL_.jpg')
      @movie24 = @actor6.movies.create!(title: 'Skyfall', year_released: 2012, image_url: 'https://m.media-amazon.com/images/M/MV5BNDVhZmJiYWMtNmIzMC00ZWNiLTkzZDYtNGNlZmViMGM4OGExXkEyXkFqcGdeQXVyNTIzOTk5ODM@._V1_UX182_CR0,0,182,268_AL_.jpg')
      @movie25 = @actor6.movies.create!(title: 'Spectre', year_released: 2015, image_url: 'https://m.media-amazon.com/images/M/MV5BOWQ1MDE1NzgtNTQ4OC00ZjliLTllZDAtN2IyOTVmMTc5YjUxXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX182_CR0,0,182,268_AL_.jpg')
    end

    it 'user can see all actors' do
      visit '/actors'

      within "actor: #{@actor1.id}" do
        expect(page).to have_content(@actor1.name)
        expect(page).to have_content("Age: #{@actor1.age}")
        expect(page).to have_content("Nationality: #{@actor1.nationality}")
      end

      within "actor: #{@actor2.id}" do
        expect(page).to have_content(@actor2.name)
        expect(page).to have_content("Age: #{@actor2.age}")
        expect(page).to have_content("Nationality: #{@actor2.nationality}")
      end

      within "actor: #{@actor3.id}" do
        expect(page).to have_content(@actor3.name)
        expect(page).to have_content("Age: #{@actor3.age}")
        expect(page).to have_content("Nationality: #{@actor3.nationality}")
      end

      within "actor: #{@actor4.id}" do
        expect(page).to have_content(@actor4.name)
        expect(page).to have_content("Age: #{@actor4.age}")
        expect(page).to have_content("Nationality: #{@actor4.nationality}")
      end

      within "actor: #{@actor5.id}" do
        expect(page).to have_content(@actor5.name)
        expect(page).to have_content("Age: #{@actor5.age}")
        expect(page).to have_content("Nationality: #{@actor5.nationality}")
      end

      within "actor: #{@actor6.id}" do
        expect(page).to have_content(@actor6.name)
        expect(page).to have_content("Age: #{@actor6.age}")
        expect(page).to have_content("Nationality: #{@actor6.nationality}")
      end
    end
  end
end
# rubocop:enable Metrics/LineLength/BlockLength
