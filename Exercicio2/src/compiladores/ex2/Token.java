package compiladores.ex2;

public class Token {
	public int tag;
	
	public Token(int id){
		tag = id;
	}
	public String toString() {
		return "Token [tag=" + tag + "]";
	}
}
