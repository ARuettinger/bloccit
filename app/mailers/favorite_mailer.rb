class FavoriteMailer < ApplicationMailer
	default from: "aaron.ruettinger@gmail.com"

	def new_comment(user, post, comment)

		headers["Message-ID"] = "<comments/#{comment.id}@limitless-lowlands-1746.example>"
		headers["In-Reply-To"] = "<post/#{post.id}@limitless-lowlands-1746.example>"
		headers["References"] = "<post/#{post.id}@limitless-lowlands-1746.example>"

		@user = user
		@post = post
		@comment = comment

		mail(to: user.email, subject: "New comment on #{post.title}")
	end
end
