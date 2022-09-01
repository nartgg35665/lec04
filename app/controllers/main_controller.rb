class MainController < ApplicationController
  def test
    
  end
  def test2
    @subject1=params[:subject1]
    @score1=params[:score1].to_i
    @subject2=params[:subject2]
    @score2=params[:score2].to_i
    @subject3=params[:subject3]
    @score3=params[:score3].to_i
    @sum=@score1+@score2+@score3
    
    if(@score1>=@score2 && @score1>=@score3)
      m=@subject1
    elsif(@score2>=@score1 && @score2>=@score3)
      m=@subject2
    elsif(@score3>=@score1 && @score3>=@score2)
      m=@subject3
    end
    @maxx=m
  end
end
