class MainController < ApplicationController
  def test
      
  end
  
  def test_re
    @subject_1 = params[:subject_1]
    @score_1 = params[:score_1].to_i

    @subject_2 = params[:subject_2]
    @score_2 = params[:score_2].to_i

    @subject_3 = params[:subject_3]
    @score_3 = params[:score_3].to_i

    @sum_score = params[:sum_score]

    @sum_score = @score_1 + @score_2 + @score_3
    
    @max_score = params[:max_score]
    @max_sub = params[:max_sub]

        if @score_1 >= @score_2
            @max_score = @score_1
            @max_sub = @subject_1
        else
            @max_score = @score_2
            @max_sub = @subject_2
        end

        if @score_3 >= @max_score
            @max_score = @score_3
            @max_sub = @subject_3
        end
  end
end
