class PostMailer < ApplicationMailer
    def post_mail(post)
 @post = post

 mail to: @post.user.email, subject: "投稿確認メール"
end
end
