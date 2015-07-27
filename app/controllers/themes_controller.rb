class ThemesController < ApplicationController
  def index
    @themes = Theme.all
  end

  def create
    @theme = Theme.new(theme_params)
    @theme.save
    render :index
  end

  def decision
    theme_num = rand(Theme.all.count) + 1
    @theme = Theme.find(theme_num)
  end

  private

  def theme_params
    params.require(:theme).permit(:content, :kind)
  end
end
