class Theme < ActiveRecord::Base

  def index
    @themes = Theme.all
  end

  def create
    @theme = Theme.new(theme_params)
  end

  private

  def theme_params
    params.require(:theme).permit(:content, :kind)
  end

end
