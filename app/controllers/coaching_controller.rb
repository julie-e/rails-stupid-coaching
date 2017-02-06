class CoachingController < ApplicationController
  def answer
    @query = params[:query]
    @answer = coach_answer(@query)
    @second_answer = coach_answer_enhanced(@query)
  end

  def ask
  end

  private

  def coach_answer(your_message)
    if your_message.include? "?"
      return "Silly question, get dressed and go to work!"
    elsif your_message.include? "I am going to work right now!"
      return "Good"
    else
      return "I don't care, get dressed and go to work!"
    end
  end

  def coach_answer_enhanced(your_message)
    if your_message.include? "I AM GOING TO WORK RIGHT NOW!"
      return "Good"
    elsif your_message.upcase == your_message
      motivation = coach_answer(your_message)
      return "I can feel your motivation! #{motivation}"
    else
      return coach_answer(your_message)
    end
  end

end
