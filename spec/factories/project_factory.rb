FactoryBot.define do
  factory :project do
    title { Faker::Name.name }
    description { Faker::Markdown.emphasis }
  end
end
