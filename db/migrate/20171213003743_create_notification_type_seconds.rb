class CreateNotificationTypeSeconds < ActiveRecord::Migration[5.1]
  def change
    create_table :notification_type_seconds do |t|
      t.string :name

      t.timestamps
    end
  end
end
