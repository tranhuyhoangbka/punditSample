class PostPolicy
  attr_reader :user, :post

  def initialize user, post
    @user = user
    @post = post
  end

  def update?
    (user && user.admin?) || !post.published?
  end

  def destroy?
    user && user.admin?
  end
end
