class ThemesController < ApplicationController
  def index
    @themes = Theme.all
  end

  def create
    @theme = Theme.new(theme_params)
    @theme.status = 'todo'
    @theme.save
    render :index
  end

  def decision_candidate
    themes = Theme.where("status = ?",'todo')
    theme_num = rand(themes.count) + 1
    @theme = themes[theme_num]
  end

  def decision
    @theme = Theme.find(params[:id])
    decision_theme = @theme
    @theme.delete
  end

  private

  def theme_params
    params.require(:theme).permit(:content, :kind)
  end
end
