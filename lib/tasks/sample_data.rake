namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = User.create!(userid: "Example",
                         name: "Example User",
                         email: "example@railstutorial.org",
                         password: "foobar",
                         password_confirmation: "foobar",
                         admin: true)
    99.times do |n|
      userid = "example-#{n+1}"
      name  = Faker::Name.name
      email = "example-#{n+1}@railstutorial.org"
      password  = "password"
      User.create!(userid: userid,
                   name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
  end
end