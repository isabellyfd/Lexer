package compiladores.ex2;

public class Number extends Token {
	private double num;
	
	public Number(String num, int id){
		super(id);
		
		this.num = Double.parseDouble(num);
	}
	
	public int getNumberInt(){
		return (int)this.num;
	}
	
	public double getNumberFloating(){
		return this.num;
	}
	
	public String toString(){
		return "[Token => Number: " + num + " == TAG: " + this.tag + "]";
	}
	
}
