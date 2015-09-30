package compiladores.ex2;

public class Delimiters extends Token {
	private String del;
	
	public Delimiters(String s) {
		super(Tag.TAG_DELIMITER);
		char str =  s.charAt(0);
		del = new String (s + "");
	}
	
	public String getDelimiter(){
		return this.del;
	}
	
	public String toString(){
		return "[Token => Delimiters : " + del + " == TAG: " + this.tag + "]";		
	}
}
