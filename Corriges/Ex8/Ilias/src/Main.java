import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;


public class Main {

	public static void main(String[] args) throws IOException {
		// TODO Auto-generated method stub
		
		Node treeRoot = new Node(null, Character.MIN_VALUE);
		FunctionsArray aryFunctions = new FunctionsArray(); 
		
		BufferedReader br = new BufferedReader(new FileReader("files/functions.txt"));
		try {
			StringBuilder sb = new StringBuilder();
			String line = br.readLine();
			while (line != null) {
				sb.append(line);
				sb.append(System.lineSeparator());
				
				Node currentNode = treeRoot;
				for (int i = 0; i < line.length(); i++)
				{
					char currentChar = line.charAt(i);
					
					// if the current node hasn't with this value it creates it
					if (currentNode.getChildWith(currentChar) == null )
					{
						Node newNode = new Node(currentNode, currentChar);
						if (i == line.length() - 1) newNode.setIsFunction(true);
						currentNode.addChild(newNode);
						currentNode = newNode;
					}
					else
					{
						currentNode = currentNode.getChildWith(currentChar);
					}	
				}
				aryFunctions.add(line);
				line = br.readLine();
			}
		} finally {
			br.close();
		}
		
		WordSearchTree searchTree = new WordSearchTree(treeRoot);
		//
		LengthVisitor visitor = new LengthVisitor(60);
		searchTree.browse(visitor);
		
		LengthVisitor visitorV2 = new LengthVisitor(60);
		aryFunctions.browse(visitorV2);
		
		PrefixVisitor visitorPrefix = new PrefixVisitor("calendar");
		PrefixVisitor visitorPrefixArray = new PrefixVisitor("calendar");
		
		searchTree.browse(visitorPrefix);
		aryFunctions.browse(visitorPrefixArray);
		
		
		Path file = Paths.get("files/output/functionsAfterVisitOfVisitor.txt");
		Files.write(file, visitor.getMatches(), Charset.forName("UTF-8"));
		
		Path fileArray = Paths.get("files/output/functionsAfterVisitOfVisitorARRAY.txt");
		Files.write(fileArray, visitorV2.getMatches(), Charset.forName("UTF-8"));
		
		
		Path filePrefixVisitor = Paths.get("files/output/functionsAfterVisitOfPrefixVisitor.txt");
		Files.write(filePrefixVisitor, visitorPrefix.getMatches(), Charset.forName("UTF-8"));
		
		Path filePrefixVisitorArray = Paths.get("files/output/functionsAfterVisitOfPrefixVisitorARRAY.txt");
		Files.write(filePrefixVisitorArray, visitorPrefixArray.getMatches(), Charset.forName("UTF-8"));
		
	}
}
