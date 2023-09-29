class CreateTimezones < ActiveRecord::Migration[7.0]
  def change
    create_table :timezones do |t|
      t.string :utc_offset
      t.boolean :is_dst
      t.string :name

      t.timestamps
    end
  end
end
