class SendtaskController < ApplicationController

  def send_request
    addr=URI("http://localhost:5555/quiz")

  # Работает только с одним JSON, а хотелось бы несколько, или сразу из файла(блок2)
  # Бывает ошибка при принятии (файл Listen.rb):
  # JSON::ParserError (784: unexpected token at '')
    # @tasks = {"question":"И с ней увянут жизни розы", "id":212553, "level":1}
    # res=Net::HTTP.post_form(addr, @tasks)
    # puts "RES: #{res.body}."
    # render json: 'ok'

  #NoMethodError (undefined method `map' for #<String:>)
    question_file = File.open('db/question_L1')
    question_file.each do |line|
      puts "REQUEST: #{line}"
      res=Net::HTTP.post_form(addr, line)
      puts "RES: #{res.body}."
    end
  end

end
