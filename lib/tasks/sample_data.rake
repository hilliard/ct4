namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    User.create!(username: "Example User",
                 password: "abc123",
                 password_confirmation: "abc123")
    99.times do |n|
      username = Faker::Name.username
      email = "example-#{n+1}@railstutorial.org"
      password = "password"
      User.create!(username: username,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
  end
end