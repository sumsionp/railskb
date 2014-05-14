require 'spec_helper'

describe "Viewing all the notes" do
	before do
    @note1 = Note.create(title: "Title1", text: "Note text 1")
    @note2 = Note.create(title: "Title2", text: "Note text 2")
  end

  it "lists all notes" do
    visit notes_path

    expect(page).to have_text("Title1")
    expect(page).to have_text("Title2")
    expect(page).to have_text("Note text 1")
    expect(page).to have_text("Note text 2")    
  end
end