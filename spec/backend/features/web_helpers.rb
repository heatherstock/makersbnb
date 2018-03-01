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
