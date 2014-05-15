require 'spec_helper'

describe "Creating a note" do
  it "saves the note and presents another empty note form" do
    visit new_note_path

    title = "New note to test"
    text = "This new text should be there now."

    2.times do
      fill_in "Title", with: title
      fill_in "Text", with: text

      click_button "Save Note"

      expect(current_path).to eq(new_note_path)

      expect(page).to have_text("You're note is safely saved!")
    end
  end
end