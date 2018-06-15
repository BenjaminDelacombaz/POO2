import java.util.ArrayList;

public class PrefixVisitor implements WordsVisitor {
	
	protected ArrayList<String> words = new ArrayList<String>();
	protected String prefix;
	
	public PrefixVisitor(String prefix)
	{
		this.prefix = prefix;
	}
	
	@Override
	public void visit(String word) {
		if (word.startsWith(prefix)) words.add(word);
	}
	
	public ArrayList<String> getMatches()
	{
		return this.words;
	}
}
