class CreateCalculations < ActiveRecord::Migration[6.1]
  def change
    create_table :calculations do |t|
      t.integer :number1
      t.integer :number2

      t.timestamps
    end
  end
end
