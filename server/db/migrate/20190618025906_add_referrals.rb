class AddReferrals < ActiveRecord::Migration[5.2]
  def change
    create_table :referrals do |t|
      t.integer :referrer_id, index: true, foreign_key: true
      t.integer :referred_id, index: true, foreign_key: true
      t.string  :source

      t.timestamps
    end
  end
end
