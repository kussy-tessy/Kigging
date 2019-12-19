# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Person.create!(
  [
    {
      name: 'くっしー'
    },
    {
      name: 'しゃれんきゅん'
    }
  ]
)

kussy = Person.where(name: 'くっしー').first
shallen = Person.where(name: 'しゃれんきゅん').first

kussy.kigurumis.create!(
  [
    {
      name: '髏々宮カルタ'
    },
    {
      name: '初音ミク'
    }
  ]
)

shallen.kigurumis.create!(
  [
    {
      name: '蓬莱山輝夜'
    },
    {
      name: '比那名居天子'
    },
    {
      name: 'シャナ'
    },
    {
      name: '大室櫻子'
    },
    {
      name: '白鬼院凜々蝶'
    },
    {
      name: '矢澤にこ'
    },
    {
      name: '小牧愛佳'
    },
    {
      name: '中野梓'
    },
    {
      name: '西森柚咲'
    },
    {
      name: '五河琴里'
    }
  ]
)

20.times do |i|
  kigurumi = Kigurumi.all.sample
  kussy.wear(kigurumi, rand(1..30).days.ago)
end

20.times do |i|
  kigurumi = Kigurumi.all.sample
  shallen.wear(kigurumi, rand(1..30).days.ago)
end