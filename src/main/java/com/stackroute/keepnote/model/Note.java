package com.stackroute.keepnote.model;

import java.time.LocalDateTime;

/*
 * The class "Note" will be acting as the data model for the Note data in the ArrayList.
 */
public class Note {

	/*
	 * This class should have five fields (noteId, noteTitle, noteContent,
	 * noteStatus and createdAt). This class should also contain the getters and
	 * setters for the fields. The value of createdAt should not be accepted from
	 * the user but should be always initialized with the system date
	 */
	private int noteId;
	private String noteTitle;
	private String noteContent;
	private String noteStatus;
	private LocalDateTime createdAt;

	/* All the getters/setters definition should be implemented here */
	public void setNoteId(int intid) {
		this.noteId=intid;
	}
	public void setNoteTitle(String string) {
		this.noteTitle=string;
	}
	public void setNoteContent(String string) {
		this.noteContent=string;
	}


	public void setNoteStatus(String string) {
		this.noteStatus=string;
	}
	public void setCreatedAt(LocalDateTime localdatetime) {
		this.createdAt=localdatetime;
	}

	@Override
	public String toString() {
		return "Note{" +
				"noteId=" + noteId +
				", noteTitle='" + noteTitle + '\'' +
				", noteContent='" + noteContent + '\'' +
				", noteStatus='" + noteStatus + '\'' +
				", createdAt=" + createdAt +
				'}';
	}

	public int getNoteId() { return this.noteId; }
	public String getNoteTitle() {
		return this.noteTitle;
	}
	public String getNoteContent() {
		return this.noteContent;
	}
	public String getNoteStatus() {
		return this.noteStatus;
	}
	public LocalDateTime getCreatedAt() {
		return this.createdAt;
	}
}