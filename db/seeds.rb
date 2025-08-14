# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Tag.create([
  { name: 'インドア' },
  { name: 'アウトドア' },
  { name: 'ゆったりとする' },
  { name: '体を動かす' },
  { name: '自然と触れ合う' },
  { name: '道具不要' },
  { name: 'お金がかからない' },
  { name: '複数人でおこなう' },
  { name: '一人でもできる' },

])