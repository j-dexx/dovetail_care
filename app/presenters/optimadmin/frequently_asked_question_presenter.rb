module Optimadmin
  class FrequentlyAskedQuestionPresenter < Optimadmin::BasePresenter
    presents :frequently_asked_question

    def id
      frequently_asked_question.id
    end

    def question
      frequently_asked_question.question
    end

    def toggle_title
      inline_detail_toggle_link(question)
    end

    def answer
      frequently_asked_question.answer
    end
  end
end
