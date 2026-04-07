module ApplicationHelper
  def title(page_title = "")
    content_for :title, page_title.empty? ? "Email Service" : page_title
  end

  def render_flash
    flash.each do |type, message|
      content_tag(:div, message, class: "flash #{type}")
    end
  end

  def gravatar_for(user, options = { size: 200 })
    email_address = user.email.downcase
    hash_digest = Digest::MD5.hexdigest(email_address)
    size = options[:size]
    gravatar_url = "https://www.gravatar.com/avatar/#{hash_digest}?s=#{size}"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end

  def render_mail_form(mail_form)
    render partial: "mail_form", locals: { mail_form: mail_form }
  end

  def render_mailer_response(mail_form)
    render partial: "mailer_response", locals: { mail_form: mail_form }
  end
end
