require 'rails_helper'

RSpec.describe Address, type: :model do
 describe 'attributes' do
 	it {should respond_to :street}
 	it {should respond_to :city}
 	it {should respond_to :zip}
 	it {should respond_to :country}
 	it {should respond_to :state}
 end
end

RSpec.describe Location, type: :model do 
	describe 'attributes' do 
		it {should respond_to :name}
	 	it {should respond_to :address}
	 end
end

RSpec.describe Trip, type: :model do 
	describe 'attributes' do 
		it {should respond_to :name}
 		it {should respond_to :start_date}
 		it {should respond_to :end_date}

	end
end
