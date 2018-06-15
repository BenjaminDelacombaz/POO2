import java.util.ArrayList;

public class Node {
	private char value = Character.MIN_VALUE; //can't init to null
	private ArrayList<Node> children = new ArrayList<Node>();
	private Node parent = null;
	private Boolean isFunction = false;
	
	public Node(Node parent, char value){
		this.setParent(parent);
		this.setValue(value);
	}

	public void addChild(Node child)
	{
		this.children.add(child);
	}
	
	public void setParent(Node parent)
	{
		this.parent = parent;
	}
	
	public void setValue(char value)
	{
		this.value = value;
	}
	
	public ArrayList<Node> getChildren()
	{
		return this.children;
	}
	
	public char getValue()
	{
		return this.value;
	}
	
	public Node getParent()
	{
		return this.parent;
	}
	
	public Boolean hasChild()
	{
		return !children.isEmpty();
	}
	
	public Node getChildWith(char value)
	{
		for (Node child : children)
		{
			if (child.getValue() == value)
			{
				return child;
			}
		}
		return null;
	}
	
	public Boolean isFunction()
	{
		return this.isFunction;
	}
	
	public void setIsFunction(Boolean newValue)
	{
		this.isFunction = newValue;
	}
}
