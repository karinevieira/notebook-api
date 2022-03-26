namespace :dev do
  desc "Sets up development environment"
  task setup: :environment do
    puts "Cadastrando tipos..."
    kinds = %w(friend family commercial)
    kinds.each do |kind|
      Kind.create!(
        description: kind
      )
    end
    puts "Tipos cadastrados com sucesso!"

    puts "Cadrastando contatos..."
    20.times do |i|
      Contact.create!(
        name: Faker::Name.name,
        email: Faker::Internet.email,
        birthdate: Faker::Date.birthday(min_age: 18, max_age: 65),
        kind: Kind.all.sample
      )
    end
    puts "Contatos cadastrados com sucesso!"
  end

end
