FactoryGirl.define do
  factory :application do
    url { 'http://example.com' }
    client
  end
end