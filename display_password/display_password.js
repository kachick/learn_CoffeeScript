var generate_password, rand_word_chars;

rand_word_chars = function() {
  return Math.random().toString(36).substr(2);
};

generate_password = function(length) {
  var password;
  if (length == null) {
    length = 8;
  }
  password = rand_word_chars();
  while (password.length < length) {
    password += rand_word_chars();
  }
  return password.substr(0, length);
};

window.onload = function() {
  document.getElementById("generated_password").innerHTML = generate_password();
}