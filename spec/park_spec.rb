require "./lib/park"
require 'rspec'

RSpec.configure do |config|
    config.formatter = :documentation
end

RSpec.describe 'Park' do
    before(:each) do
    
    end

    describe '#initialize()' do
        it 'will be an isntance of a park object' do

        end
        
        it 'will hold a name attribute based on the argument' do

        end

        it 'will hold an admission price attribute based on the argument' do

        end

        it 'will hold a vehicles argument that is initialized as an empty array' do

        end

        it 'will hold a passengers argument that is initialized as an empty array' do

        end
    end

    describe '#generate_revenue' do
        it 'will generate an integer repersenting revenue' do

        end

        it 'creates the revenue figure by charging the admission price to every adult included in the passenger list' do
            
        end
    end
end