class CreateInitialSchema < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :nick_name, null: false
      t.boolean :professional, default: false
      t.timestamps null: false
    end

    create_table :scores do |t|
      t.integer :user_score_1, null: false
      t.integer :user_score_2, null: false
      t.integer :user_score_3, null: false
      t.integer :user_score_4, null: false
      t.timestamps null: false
    end

    create_table :user_scores do |t|
    end

    create_table :daily_champions do |t|
    end

    create_table :ranking_masters do |t|
    end

    create_table :monthly_rankings do |t|
    end

    create_table :total_rankings do |t|
    end

    create_table :advantage_points do |t|
    end

  end
end
