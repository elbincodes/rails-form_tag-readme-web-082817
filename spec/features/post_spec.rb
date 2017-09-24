
require 'rails_helper'

describe 'new post' do
  it 'ensures that the form route works with the /new action' do
    visit new_post_path
    expect(page.status_code).to eq(200)
  end

  it 'renders HTML in the /new template' do
    visit new_post_path
    expect(page).to have_content('Post Form')
  end
  # we got rid of the above because we dont want this to be a static page that just says "post form on it. but I just put it back in becuase I dont want to mess with any tests created.  "

  it "displays a new post form that redirects to the index page, which then contains the submitted post's title and description" do
      visit new_post_path
      fill_in 'post_title', with: 'My post title'
      fill_in 'post_description', with: 'My post description'

      click_on 'Submit Post'

      expect(page.current_path).to eq(posts_path)
      expect(page).to have_content('My post title')
      expect(page).to have_content('My post description')
    end

end




# require 'rails_helper'
#
# describe 'new post' do
#
# end
