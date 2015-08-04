class ThemesController < ApplicationController
  def index
    @themes = Theme.all
  end

  def create
    @theme = Theme.new(theme_params)
    @theme.status = 'todo'
    @theme.save
    redirect_to action: :index
  end

  def decision_candidate
    themes = Theme.where("status = ?",'todo')
    theme_num = rand(themes.count)
    @theme = themes[theme_num]
    @decision_candidate = Theme.new
  end

  def decision
    @theme = Theme.find(params[:id])
    @decision_theme = @theme
    @theme.delete
  end

  def post_theme
    @theme = Theme.new
  end

  private

  def theme_params
    params.require(:theme).permit(:title, :content, :kind)
  end
end
