autor = User.create(email: "kontakt@rubypopolsku.pl", password: "foobar2000", author: true)
komentujacy = User.create(email: "foo@bar.dev", password: "Qwerty123", author: false)

2.times do
  Category.create(name: Faker::Books::Lovecraft.fhtagn)
end

10.times do
  Post.create(
    title: Faker::Books::Lovecraft.sentence,
    body: Faker::Books::Lovecraft.paragraph(sentence_count: 5),
    category: Category.all.sample,
    user: autor
  ).tap do |post|
    2.times do
      Comment.create(body: Faker::TvShows::Friends.quote, post: post, user: User.all.sample)
    end
  end
end
