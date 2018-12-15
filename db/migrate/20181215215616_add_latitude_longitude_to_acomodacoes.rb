class AddLatitudeLongitudeToAcomodacoes < ActiveRecord::Migration[5.2]
  def change
    add_column :acomodacoes, :latitude, :decimal
    add_column :acomodacoes, :longitude, :decimal
  end
end
