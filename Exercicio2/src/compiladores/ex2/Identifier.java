package compiladores.ex2;

public class Identifier extends Token {
	private String id;
	
	public Identifier (String s){
		super(Tag.TAG_ID);
		id = s;
	}
	
	public String getId(){
		return this.id;
	}
	
	public String toString(){
		return "[Token => Identifier: " + id + " == TAG: " + this.tag + "]";
	}
}
