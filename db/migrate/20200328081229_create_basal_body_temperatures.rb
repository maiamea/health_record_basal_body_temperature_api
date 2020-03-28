class CreateBasalBodyTemperatures < ActiveRecord::Migration[6.0]
  def change
    create_table :basal_body_temperatures do |t|
      t.float :measured_value
      t.datetime :measured_at

      t.timestamps
    end
  end
end
