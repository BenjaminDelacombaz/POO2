// compile me: javac Ex0.java
// run me: java -cp . Ex0

import java.io.*;
import java.util.ArrayList;

public class Ex0 {
  public static void main(String[] args) {
    for (String path : findAllFilePathsStartingWith(args[0], args[1])) {
      System.out.println(path);
    }
  }

  public static ArrayList<String> findAllFilePathsStartingWith(String starts, String path) {
    ArrayList<String> resultList = new ArrayList<String>();

    for (File file : new File(path).listFiles()) {
      if (file.isFile() && file.getName().startsWith(starts)) {
        resultList.add(file.getAbsolutePath());
      } else if (file.isDirectory()) {
        resultList.addAll(findAllFilePathsStartingWith(starts, file.getAbsolutePath()));
      }
    }
    
    return resultList;
  }  
}