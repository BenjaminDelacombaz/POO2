// compile me: javac Ex0_2.java
// run me: java -cp . Ex0_2

import java.io.*;
import java.util.ArrayList;

public class Ex0_2 {
  public static void main(String[] args) {
    for (String path : findAllFilePathsStartingWith(args[0], args[1])) {
      System.out.println(path);
    }
  }

  public static ArrayList<String> findAllFilePathsStartingWith(String starts, String path) {
    ArrayList<String> resultList = new ArrayList<String>();

    for (File file : new File(path).listFiles()) {
      if (file.isFile() && file.getName().startsWith(starts)) {
        ArrayList<String> currentNames = new ArrayList<String>();
        for (String filePath : resultList) { currentNames.add(new File(filePath).getName()); }
        
        if (!currentNames.contains(file.getName()))
          resultList.add(file.getAbsolutePath());
          
      } else if (file.isDirectory()) {
        ArrayList<String> currentNames = new ArrayList<String>();
        for (String filePath : resultList) { currentNames.add(new File(filePath).getName()); }
        
        for (String newFilePath : findAllFilePathsStartingWith(starts, file.getAbsolutePath())) {
          if (!currentNames.contains(new File(newFilePath).getName()))
            resultList.add(newFilePath);
        }
      }
    }
    
    return resultList;
  }  
}