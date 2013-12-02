module ApplicationHelper
  def is_mobile?
    @user_agent = UserAgent.parse(request.user_agent)
    return @user_agent.mobile?
  end
end
