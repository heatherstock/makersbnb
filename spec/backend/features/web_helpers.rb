def sign_up_jim
  visit('/')
  # find('a', text: 'Register').click
  # click_link 'register'
  click_on('Register')
  # click_link('#register')
  # click_button('SIGN UP')
  fill_in 'username', with: "Jim"
  fill_in 'email', with: "abc@123.com"
  fill_in 'password', with: "abc123"
  click_button('Submit')
end

def sign_up_bob
  visit('/')
  click_on('Register')
  fill_in 'username', with: "Bob"
  fill_in 'email', with: "bob@123.com"
  fill_in 'password', with: "bob"
  click_button('Submit')
end

def sign_in_jim
  visit ('/')
  fill_in 'username', with: 'Jim'
  fill_in 'password', with: 'abc123'
  click_button('SIGN IN')
end

def sign_in_bob
  visit ('/')
  fill_in 'username', with: 'Bob'
  fill_in 'password', with: 'bob'
  click_button('SIGN IN')
end

def add_snowy_road
  fill_in 'address', with: '27 Snowy road'
  fill_in 'price', with: '100'
  fill_in 'image', with: 'www.imgur.com'
  click_button('CREATE SPACE')
end
