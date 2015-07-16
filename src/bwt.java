import java.io.File;
import java.io.FilenameFilter;
import java.io.Serializable;

public class bwt
  implements Serializable
{
  public int a;
  public int b;
  public String c;
  public String d;
  public String e;
  public String f;
  
  public final String a()
  {
    return b + a;
  }
  
  public String toString()
  {
    return "\n" + bwt.class.getSimpleName() + "\nid         " + a + "\nmessage id " + b + "\nfilename   " + c + "\nurl        " + d + "\ncreatedAt  " + e + "\nupdatedAt  " + f;
  }
}

/* Location:
 * Qualified Name:     bwt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */