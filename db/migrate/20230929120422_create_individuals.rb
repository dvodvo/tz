class CreateIndividuals < ActiveRecord::Migration[7.0]
  def change
    create_table :individuals do |t|
      t.string :name
      t.timestamptz :tz

      t.timestamps
    end
  end
end
