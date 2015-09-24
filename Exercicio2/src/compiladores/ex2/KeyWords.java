package compiladores.ex2;

public class KeyWords extends Token{
	private String keyWord;
	
	public KeyWords (String s){
		super(Tag.TAG_KEYWORD);
		keyWord = s;
	}
	
	public String getKeyWord(){
		return this.keyWord;
	}
}
