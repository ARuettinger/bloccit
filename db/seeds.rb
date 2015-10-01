include RandomData

# Create Posts
# 50.times do
# 	Post.create!(
# 		title: RandomData.random_sentence,
# 		body: RandomData.random_paragraph
# 		)
# end
# posts = Post.all

# # Create Comments
# 100.times do 
# 	Comment.create!(
# 		post: posts.sample,
# 		body: RandomData.random_paragraph
# 		)
# end

p = Post.find_or_create_by(title:"unique title", body:"this is a unique body")
c = Comment.find_or_create_by(post: p, body: "THis is the new body..the best body of them all.")
puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"