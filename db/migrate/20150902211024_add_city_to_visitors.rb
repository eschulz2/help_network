class AddCityToVisitors < ActiveRecord::Migration
  def change
  	add_column :visitors, :city, :string
  end
end
