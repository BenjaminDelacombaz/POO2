public class WordSearchTree implements WordsBrowsable {
	private Node treeRoot;
	
	public WordSearchTree(Node treeRoot)
	{
		this.treeRoot = treeRoot;
	}
	
	public Node getTreeRoot()
	{
		return this.treeRoot;
	}
	
	public Boolean functionExists(String researchWord)
	{
		Node currentNode = treeRoot;
		Boolean isFound = false;
		int i;
		for (i = 0; i < researchWord.length(); i++)
		{
			isFound = false;
			char currentChar = researchWord.charAt(i);
			if (currentNode.hasChild())
			{
				for (Node child : currentNode.getChildren())
				{
					if (child.getValue() == currentChar)
					{
						isFound = true;
						currentNode = child;
					}
				}
				if (!isFound) break;
			}
		}
		if (isFound)
		{
			return currentNode.isFunction();
		}
		else
		{			
			return false;
		}
	}

	@Override
	public void browse(WordsVisitor visitor)
	{
		getWords(visitor, this.getTreeRoot(), new String());
	}
	
	private void getWords(WordsVisitor visitor, Node currentNode, String word)
	{
		if (currentNode.hasChild())
		{
			for (Node child : currentNode.getChildren())
			{
				String wordChild = new String(word); 
				wordChild += child.getValue();
				getWords(visitor, child, wordChild); 
			}
		}
		//if the word is a function the visitor does his job
		if (currentNode.isFunction()) visitor.visit(word);
		
	}
}
