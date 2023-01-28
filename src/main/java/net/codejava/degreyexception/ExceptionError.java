package net.codejava.degreyexception;

public class ExceptionError {
   private long id;
   private String message;
   private TypeException typeException;
   
public TypeException getTypeException() {
	return typeException;
}
public void setTypeException(TypeException typeException) {
	this.typeException = typeException;
}
public long getId() {
	return id;
}
public void setId(long id) {
	this.id = id;
}
public String getMessage() {
	return message;
}
public void setMessage(String message) {
	this.message = message;
}
public ExceptionError(long id, String message, TypeException typeException) {
	super();
	this.id = id;
	this.message = message;
	this.typeException=typeException;
}
   
}
