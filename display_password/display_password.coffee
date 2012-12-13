rand_word_chars = () -> Math.random().toString(36).substr(2)

generate_password = (length=8) ->
  password = rand_word_chars()
  password += rand_word_chars() while password.length < length
  password.substr 0, length

alert generate_password()