class CreateTimeLogs < ActiveRecord::Migration[5.1]
  def change
    create_table :time_logs do |t|
      t.integer :hours, null: false
      t.date :date, null: false
      t.references :user, foreign_key: true, index: true
      t.references :project, foreign_key: true, index: true

      t.timestamps
    end
  end
end
