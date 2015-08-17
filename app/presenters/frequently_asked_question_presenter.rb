class FrequentlyAskedQuestionPresenter < BasePresenter
  presents :frequently_asked_question

  def id
    frequently_asked_question.id
  end

  def linked_question(faq_count)
    h.link_to "#faq-#{frequently_asked_question.id}", class: 'open-faq', data: { container: '.faq-popout', class: 'hide', return: "false", content: "#faq-#{frequently_asked_question.id}", faq: faq_count } do
      h.content_tag :span, frequently_asked_question.question
    end
  end

  def question
    frequently_asked_question.question
  end

  def answer
    h.raw frequently_asked_question.answer
  end
end
