class CreateInitialSchema < ActiveRecord::Migration[5.1]
  def change

    # 会員情報
    create_table :users do |t|
      t.string :octagon_id, null: false
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :nick_name, null: false
      t.boolean :professional, default: false
      t.timestamps null: false
    end
    add_index :users, :octagon_id, unique: true
    add_index :users, :nick_name, unique: true

    # 会員累計獲得ポイント
    create_table :user_total_records do |t|
      t.references :users, index: true, foreign_key: true
      t.float :ranking_point, null: false
      t.float :average_point, null: false
      t.float :average_point_when_top, null: false
      t.integer :match_count, null: false
      t.integer :top_count, null: false
      t.integer :second_count, null: false
      t.integer :third_count, null: false
      t.integer :fourth_count, null: false
      t.float :top_percent, null: false
      t.float :second_percent, null: false
      t.float :third_percent, null: false
      t.float :fourth_percent, null: false
      t.integer :real_points, null: false
      t.integer :current_points, null: false
    end

    create_table :user_monthly_records do |t|
      t.references :users, index: true, foreign_key: true
      t.float :ranking_point, null: false
      t.float :average_point, null: false
      t.float :average_point_when_top, null: false
      t.integer :match_count, null: false
      t.integer :top_count, null: false
      t.integer :second_count, null: false
      t.integer :third_count, null: false
      t.integer :fourth_count, null: false
      t.float :top_percent, null: false
      t.float :second_percent, null: false
      t.float :third_percent, null: false
      t.float :fourth_percent, null: false
      t.integer :current_points, null: false
    end

    # 半荘結果
    create_table :scores do |t|
      t.integer :user_score_id_1, null: false
      t.integer :user_score_id_2, null: false
      t.integer :user_score_id_3, null: false
      t.integer :user_score_id_4, null: false
      t.integer :penalty_point, null: false
      t.date :date, null: false
      t.timestamps null: false
    end

    # 半荘結果詳細
    create_table :user_scores do |t|
      t.references :scores, index: true, foreign_key: true
      t.references :users, index: true, foreign_key: true
      t.date :date, null: false
      t.timestamps null: false
    end

    # デイリーチャンピオン
    create_table :daily_champions do |t|
      t.date :date, :date, null: false
      t.references :users, index: true, foreign_key: true
      t.integer :point, null: false
      t.timestamps null: false
    end

    # 半期毎のアマチュアランキング
    create_table :amateur_league_rankings do |t|
      t.date :date, null: false
      t.integer :ranking, null: false
      t.references :users, index: true, foreign_key: true
      t.integer :total_point, null: false
      t.timestamps null: false
    end

    # 月毎のプロランキング
    create_table :professional_league_rankings do |t|
      t.date :date, null: false
      t.integer :ranking, null: false
      t.references :users, index: true, foreign_key: true
      t.integer :total_point, null: false
      t.timestamps null: false
    end

    # 段位マスター
    create_table :grade_masters do |t|
      t.string :name, null: false
      t.integer :needed_point, null: false
      t.timestamps null: false
    end

    # 高段位ランキング
    create_table :grade_rankings do |t|
      t.references :users, index: true, foreign_key: true
      t.integer :ranking, null: false
      t.timestamps null: false
    end
    add_index :grade_rankings, :nick_name, unique: true

    # 獲得累計ポイント
    create_table :user_advantage_points do |t|
      t.date :date, null: false
      t.references :users, index: true, foreign_key: true
      t.integer :point, null: false
      t.timestamps null: false
    end

  end
end
