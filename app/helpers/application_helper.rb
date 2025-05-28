module ApplicationHelper
  # blank?は①長さが0 ②全ての文字が空白文字（スペースや改行など） ③配列の要素が0 ④nilの時true
  # present?は中身がある,nilではないときtrue
  def document_title
    if @title.present?
      "#{@title} - Baukis2"
    else
      "Baukis2"
    end
  end
end
