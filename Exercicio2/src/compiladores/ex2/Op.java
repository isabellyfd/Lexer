package compiladores.ex2;

public class Op extends Token{
	private String op;
	
	public Op(String s){
		super(Tag.TAG_OP);
		char str = s.charAt(0);
		op = new String (str + "");
	}
	
	public String getOp(){
		return this.op;
	}
	
	public String toString(){
		return "[Token => Op: " + op + " == TAG: " + this.tag + "]";
	}
}
