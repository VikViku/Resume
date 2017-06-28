# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170628173118) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "auth_group", id: :serial, force: :cascade do |t|
    t.string "name", limit: 80, null: false
    t.index "name varchar_pattern_ops", name: "auth_group_name_a6ea08ec_like"
    t.index ["name"], name: "auth_group_name_key", unique: true
  end

  create_table "auth_group_permissions", id: :serial, force: :cascade do |t|
    t.integer "group_id", null: false
    t.integer "permission_id", null: false
    t.index ["group_id", "permission_id"], name: "auth_group_permissions_group_id_0cd325b0_uniq", unique: true
    t.index ["group_id"], name: "auth_group_permissions_0e939a4f"
    t.index ["permission_id"], name: "auth_group_permissions_8373b171"
  end

  create_table "auth_permission", id: :serial, force: :cascade do |t|
    t.string "name", limit: 255, null: false
    t.integer "content_type_id", null: false
    t.string "codename", limit: 100, null: false
    t.index ["content_type_id", "codename"], name: "auth_permission_content_type_id_01ab375a_uniq", unique: true
    t.index ["content_type_id"], name: "auth_permission_417f1b1c"
  end

  create_table "auth_user", id: :serial, force: :cascade do |t|
    t.string "password", limit: 128, null: false
    t.datetime "last_login"
    t.boolean "is_superuser", null: false
    t.string "username", limit: 150, null: false
    t.string "first_name", limit: 30, null: false
    t.string "last_name", limit: 30, null: false
    t.string "email", limit: 254, null: false
    t.boolean "is_staff", null: false
    t.boolean "is_active", null: false
    t.datetime "date_joined", null: false
    t.index "username varchar_pattern_ops", name: "auth_user_username_6821ab7c_like"
    t.index ["username"], name: "auth_user_username_key", unique: true
  end

  create_table "auth_user_groups", id: :serial, force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "group_id", null: false
    t.index ["group_id"], name: "auth_user_groups_0e939a4f"
    t.index ["user_id", "group_id"], name: "auth_user_groups_user_id_94350c0c_uniq", unique: true
    t.index ["user_id"], name: "auth_user_groups_e8701ad4"
  end

  create_table "auth_user_user_permissions", id: :serial, force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "permission_id", null: false
    t.index ["permission_id"], name: "auth_user_user_permissions_8373b171"
    t.index ["user_id", "permission_id"], name: "auth_user_user_permissions_user_id_14a6b632_uniq", unique: true
    t.index ["user_id"], name: "auth_user_user_permissions_e8701ad4"
  end

  create_table "blog_post", id: :serial, force: :cascade do |t|
    t.string "title", limit: 200, null: false
    t.text "text", null: false
    t.datetime "created_date", null: false
    t.datetime "published_date"
    t.integer "author_id", null: false
    t.index ["author_id"], name: "blog_post_4f331e2f"
  end

  create_table "categories_category", id: :serial, force: :cascade do |t|
    t.string "name", limit: 100, null: false
    t.string "slug", limit: 50, null: false
    t.boolean "active", null: false
    t.string "thumbnail", limit: 100
    t.integer "thumbnail_width"
    t.integer "thumbnail_height"
    t.integer "order", null: false
    t.string "alternate_title", limit: 100, null: false
    t.string "alternate_url", limit: 200, null: false
    t.text "description"
    t.string "meta_keywords", limit: 255, null: false
    t.text "meta_extra", null: false
    t.integer "lft", null: false
    t.integer "rght", null: false
    t.integer "tree_id", null: false
    t.integer "level", null: false
    t.integer "parent_id"
    t.index "slug varchar_pattern_ops", name: "categories_category_slug_6fddebb1_like"
    t.index ["level"], name: "categories_category_c9e9a848"
    t.index ["lft"], name: "categories_category_caf7cc51"
    t.index ["parent_id", "name"], name: "categories_category_parent_id_893f7987_uniq", unique: true
    t.index ["parent_id"], name: "categories_category_6be37982"
    t.index ["rght"], name: "categories_category_3cfbd988"
    t.index ["slug"], name: "categories_category_2dbcba41"
    t.index ["tree_id"], name: "categories_category_656442a0"
  end

  create_table "categories_categoryrelation", id: :serial, force: :cascade do |t|
    t.integer "object_id", null: false
    t.string "relation_type", limit: 200
    t.integer "category_id", null: false
    t.integer "content_type_id", null: false
    t.index ["category_id"], name: "categories_categoryrelation_b583a629"
    t.index ["content_type_id"], name: "categories_categoryrelation_417f1b1c"
  end

  create_table "django_admin_log", id: :serial, force: :cascade do |t|
    t.datetime "action_time", null: false
    t.text "object_id"
    t.string "object_repr", limit: 200, null: false
    t.integer "action_flag", limit: 2, null: false
    t.text "change_message", null: false
    t.integer "content_type_id"
    t.integer "user_id", null: false
    t.index ["content_type_id"], name: "django_admin_log_417f1b1c"
    t.index ["user_id"], name: "django_admin_log_e8701ad4"
  end

  create_table "django_content_type", id: :serial, force: :cascade do |t|
    t.string "app_label", limit: 100, null: false
    t.string "model", limit: 100, null: false
    t.index ["app_label", "model"], name: "django_content_type_app_label_76bd3d3b_uniq", unique: true
  end

  create_table "django_migrations", id: :serial, force: :cascade do |t|
    t.string "app", limit: 255, null: false
    t.string "name", limit: 255, null: false
    t.datetime "applied", null: false
  end

  create_table "django_session", primary_key: "session_key", id: :string, limit: 40, force: :cascade do |t|
    t.text "session_data", null: false
    t.datetime "expire_date", null: false
    t.index "session_key varchar_pattern_ops", name: "django_session_session_key_c0390e0f_like"
    t.index ["expire_date"], name: "django_session_de54fa62"
  end

  create_table "menu_category", id: :serial, force: :cascade do |t|
    t.string "name", limit: 50, null: false
    t.boolean "active", null: false
    t.integer "lft", null: false
    t.integer "rght", null: false
    t.integer "tree_id", null: false
    t.integer "level", null: false
    t.integer "parent_id"
    t.index "name varchar_pattern_ops", name: "menu_category_name_3df82881_like"
    t.index ["level"], name: "menu_category_c9e9a848"
    t.index ["lft"], name: "menu_category_caf7cc51"
    t.index ["name"], name: "menu_category_name_key", unique: true
    t.index ["parent_id"], name: "menu_category_6be37982"
    t.index ["rght"], name: "menu_category_3cfbd988"
    t.index ["tree_id"], name: "menu_category_656442a0"
  end

  create_table "menu_catprodlist", id: :serial, force: :cascade do |t|
    t.string "name", limit: 50, null: false
    t.boolean "active", null: false
    t.decimal "price", precision: 6, scale: 2
    t.integer "lft", null: false
    t.integer "rght", null: false
    t.integer "tree_id", null: false
    t.integer "level", null: false
    t.integer "parent_id"
    t.string "type", limit: 25, null: false
    t.index ["level"], name: "menu_catprodlist_c9e9a848"
    t.index ["lft"], name: "menu_catprodlist_caf7cc51"
    t.index ["parent_id"], name: "menu_catprodlist_6be37982"
    t.index ["rght"], name: "menu_catprodlist_3cfbd988"
    t.index ["tree_id"], name: "menu_catprodlist_656442a0"
  end

  create_table "menu_genre", id: :serial, force: :cascade do |t|
    t.string "name", limit: 50, null: false
    t.integer "lft", null: false
    t.integer "rght", null: false
    t.integer "tree_id", null: false
    t.integer "level", null: false
    t.integer "parent_id"
    t.index "name varchar_pattern_ops", name: "menu_genre_name_85e038d9_like"
    t.index ["level"], name: "menu_genre_c9e9a848"
    t.index ["lft"], name: "menu_genre_caf7cc51"
    t.index ["name"], name: "menu_genre_name_key", unique: true
    t.index ["parent_id"], name: "menu_genre_6be37982"
    t.index ["rght"], name: "menu_genre_3cfbd988"
    t.index ["tree_id"], name: "menu_genre_656442a0"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "title"
    t.text "desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
