Given(/^a user visits the signin page$/) do
  # pending # express the regexp above with the code you wish you had
  visit signin_path
end

When(/^he submits invalid signin information$/) do
 #  pending # express the regexp above with the code you wish you had
  click_button "Sign In"
end

Then(/^he should see an error message$/) do
 #  pending # express the regexp above with the code you wish you had
  expect.(page).to have_selector('div.alert.alert-error')
end

Given(/^the user has an account$/) do
 #pending # express the regexp above with the code you wish you had
  @user = User.create(name: "Example User", email: "user@example.com",
                       password: "foobar", password_confirmation: "foobar")
end

When(/^the user submits valid signin information$/) do
  #pending # express the regexp above with the code you wish you had
  fill_in "Email", with: @user_email
  fill_in "Password", with: @user.password
  click_button "Sign In"
end

Then(/^he should see his profile page$/) do
 #  pending # express the regexp above with the code you wish you had
  expect(page).to have_title(@user.name)
end

Then(/^he should see a signout link$/) do
  # pending # express the regexp above with the code you wish you had
  expect(page).to have_link('Sign Out', href: signout_path)
end