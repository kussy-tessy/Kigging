class KiggingsController < ApplicationController
  def create
    @kigging = Kigging.new(kiggig_params)
    if @kigging.save
      redirect_to '/', notice:'登録しました。'
      puts 'aaa'
    end
  end

  private
    def kiggig_params
      params.require(:kigging).permit(:actor_id, :kigurumi_id, :kig_date)
    end
end
