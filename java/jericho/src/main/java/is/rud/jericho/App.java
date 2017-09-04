package is.rud.jericho;

import net.htmlparser.jericho.*;
import java.util.*;
import java.io.*;
import java.net.*;

public class App {
  public static String html_to_text(String x, boolean include_attributes) throws Exception {
    try {
      Source source = new Source(x);
      String renderedText = source.getTextExtractor().setIncludeAttributes(include_attributes).toString();
      return(renderedText);
    } catch(Throwable t) {
      System.out.println("ERROR");
      System.out.println(t);
      return("");
    }
  }
  public static String render_html_to_text(String x) throws Exception {
    try {
      Source source = new Source(x);
      String renderedText = source.getRenderer().toString();
      return(renderedText);
    } catch(Throwable t) {
      System.out.println("ERROR");
      System.out.println(t);
      return("");
    }
  }

}