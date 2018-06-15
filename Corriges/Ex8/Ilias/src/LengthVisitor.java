import java.util.ArrayList;

public class LengthVisitor implements WordsVisitor {
	private int length = 2;
	private ArrayList<String> words = new ArrayList<String>();
	
	public LengthVisitor(int length)
	{
		this.length = length;
	}
	
	@Override
	public void visit(String word) {
		// TODO Auto-generated method stub
		if (word.length() >= length) 
		{
			words.add(word);
		}
	}
	
	public ArrayList<String> getMatches()
	{
		return words;
	}
	
}
