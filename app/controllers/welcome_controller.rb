class WelcomeController < ApplicationController

  def index
    flash[:notice] = "您好！新生大学交流区欢迎您！登录后可以在交流论坛发表文章。"
  end

end
