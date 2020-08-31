FactoryBot.define do

  factory :item_image do
    url    { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/factories/test.jpg')) }
    item_id         {1}
  end

end