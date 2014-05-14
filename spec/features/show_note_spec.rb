require 'spec_helper'

describe "Viewing a note" do
  it "shows the note details" do
    title = "Here's a note"
    text = "This is how to work: Put your head down and do it!"
    note = Note.create(title: title, text: text)

    visit note_path(note)

    expect(page).to have_text(title)
    expect(page).to have_text(text)    
  end
end