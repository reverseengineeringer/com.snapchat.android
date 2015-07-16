import java.util.Enumeration;

public final class bxw
  implements Enumeration
{
  public final char a = ',';
  private String b = null;
  private char c = ',';
  
  public bxw(String paramString)
  {
    b = paramString;
    c = ',';
  }
  
  public final boolean a()
  {
    return b.length() > 0;
  }
  
  public final String b()
  {
    int m = b.length();
    int k = 0;
    int j = 0;
    label65:
    String str1;
    if (j < m)
    {
      int i;
      if (b.charAt(j) == '(') {
        i = k + 1;
      }
      do
      {
        do
        {
          for (;;)
          {
            j += 1;
            k = i;
            break;
            if (b.charAt(j) != ')') {
              break label65;
            }
            i = k - 1;
          }
          i = k;
        } while (b.charAt(j) != c);
        i = k;
      } while (k != 0);
      str1 = b.substring(0, j);
      b = b.substring(j + 1);
    }
    for (;;)
    {
      String str2 = str1;
      if (str1 == null)
      {
        str2 = b;
        b = "";
      }
      return str2;
      str1 = null;
    }
  }
  
  public final boolean hasMoreElements()
  {
    return a();
  }
  
  public final Object nextElement()
  {
    return b();
  }
}

/* Location:
 * Qualified Name:     bxw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */