// compile me: javac Ex0_3.java
// run me: java -cp . Ex0_3

import java.io.*;
import java.util.ArrayList;

public class Ex0_3 {
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
        ArrayList<String> newList = findAllFilePathsStartingWith(starts, file.getAbsolutePath());
        ArrayList<String> newNames = new ArrayList<String>();
        for (String filePath : newList) { newNames.add(new File(filePath).getName()); }
        
        for (String filePath : resultList) {
          if (!newNames.contains(new File(filePath).getName()))
            newList.add(filePath);
        }
        resultList = newList;
      }
    }
    
    return resultList;
  }  
}