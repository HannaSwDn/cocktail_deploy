require 'rails_helper'

RSpec.describe Item, type: :model do

  describe 'DB table' do
    it { is_expected.to have_db_column :title }
    it { is_expected.to have_db_column :category }
    it { is_expected.to have_db_column :description }
		it { is_expected.to have_db_column :price }
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of :title }
    it { is_expected.to validate_presence_of :category }
    it { is_expected.to validate_presence_of :description }
    it { is_expected.to validate_presence_of :price }
  end

end
