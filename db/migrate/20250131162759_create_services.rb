class CreateServices < ActiveRecord::Migration[7.1]
  def change
    create_table :services do |t|
      t.string :name
      t.string :address
      t.text :description
      t.geometry :location, type: "point", srid: 4326
      #t.geometry: This is the correct way to define a PostGIS geometry column in Rails.
      # type: "point": Specifies the geometry type (e.g., point, polygon).
      # srid: 4326: Specifies the spatial reference system (WGS84, commonly used for latitude/longitude).

      t.timestamps
    end
  end
end
