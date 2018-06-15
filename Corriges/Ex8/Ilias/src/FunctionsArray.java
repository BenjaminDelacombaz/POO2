import java.util.ArrayList;

public class FunctionsArray extends ArrayList<String> implements WordsBrowsable {

	@Override
	public void browse(WordsVisitor visitor) {
		// TODO Auto-generated method stub
		for (String word : this)
		{
			visitor.visit(word);
		}
	}

}
