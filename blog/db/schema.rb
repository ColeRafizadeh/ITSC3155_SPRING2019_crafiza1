create_table "comments", force :cascade do |t|
    t.string "commentor"
    t.text "Body"
    t.integer "aricle_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["article_id"], name "index_comments_on_article_id"
end
