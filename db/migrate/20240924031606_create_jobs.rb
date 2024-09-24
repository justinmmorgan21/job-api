class CreateJobs < ActiveRecord::Migration[7.1]
  def change
    create_table :jobs do |t|
      t.string :type
      t.timestamp :date_time
      t.string :duration
      t.text :details
      t.integer :user_id

      t.timestamps
    end
  end
end
