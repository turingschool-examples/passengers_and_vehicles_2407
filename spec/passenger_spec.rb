require "./lib/passenger"

RSpec.configure do |config|
    config.formatter = :documentation
    end

RSpec.describe '#passenger' do
    it 'exists' do
        passenger = Passenger.new
    end
end