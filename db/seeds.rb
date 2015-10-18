# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

teachers = [
    {
      name: "Emmet 'Doc' Brown",
      email: "brown@brown.com",
      avatar_url: "http://images.needcoffee.com/doc-brown.jpg",
      gender: "male",
      nationality: "American"
    },
    {
      name: "Mysterious Stranger",
      email: "t2@atlavista.com",
      nationality: "Austrian",
      gender: "male",
      avatar_url: "http://avatarbox.net/avatars/img10/schwarzenegger_as_terminator_avatar_picture_52731.jpg"
    },
    {
      name: "Generic Female Teacher",
      email: "gft@gmail.com",
      nationality: "Chinese",
      gender: "female",
      avatar_url: "http://images.sodahead.com/polls/003708931/453445835_Teacher1_answer_1_xlarge.png"
    },
    {
      name: "Invisible Woman",
      email: "invi@gmail.com",
      nationality: "French",
      gender: "female",
      avatar_url: "https://cdn0.iconfinder.com/data/icons/avatars-3/512/avatar_ginger__girl-128.png"
    },
    {
      name: "Arbiter",
      email: "arbiter@aiur.com",
      nationality: "Protoss",
      gender: "male",
      avatar_url: "http://classic.battle.net/images/battle/scc/protoss/pix/popup/popup-arbiter.gif"
    }
]

teachers.each do |teacher|
  t = Teacher.new(teacher)
  t.save()
end