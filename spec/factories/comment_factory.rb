FactoryBot.define do
  factory :comment do
    body { Faker::Markdown.emphasis }
    association :project
  end
end
