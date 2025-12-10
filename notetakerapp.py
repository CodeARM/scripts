from datetime import date
from pathlib import Path

print("Take a note.")
note = input("What is your note: ")

today = str(date.today())
note_line = today + ": " + note

notes_path = Path.home() / "notes.txt"
notes = notes_path.read_text()
notes_path.write.text(notes + note_line + "\n")
