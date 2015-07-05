import java.net.ProtocolException;

public final class bnf
{
  public final blz a;
  public final int b;
  public final String c;
  
  public bnf(blz paramblz, int paramInt, String paramString)
  {
    a = paramblz;
    b = paramInt;
    c = paramString;
  }
  
  public static bnf a(String paramString)
  {
    int i = 9;
    int j;
    blz localblz;
    if (paramString.startsWith("HTTP/1."))
    {
      if ((paramString.length() < 9) || (paramString.charAt(8) != ' ')) {
        throw new ProtocolException("Unexpected status line: " + paramString);
      }
      j = paramString.charAt(7) - '0';
      if (j == 0) {
        localblz = blz.a;
      }
    }
    while (paramString.length() < i + 3)
    {
      throw new ProtocolException("Unexpected status line: " + paramString);
      if (j == 1)
      {
        localblz = blz.b;
      }
      else
      {
        throw new ProtocolException("Unexpected status line: " + paramString);
        if (paramString.startsWith("ICY "))
        {
          localblz = blz.a;
          i = 4;
        }
        else
        {
          throw new ProtocolException("Unexpected status line: " + paramString);
        }
      }
    }
    try
    {
      j = Integer.parseInt(paramString.substring(i, i + 3));
      if (paramString.length() > i + 3) {
        if (paramString.charAt(i + 3) != ' ') {
          throw new ProtocolException("Unexpected status line: " + paramString);
        }
      }
    }
    catch (NumberFormatException localNumberFormatException)
    {
      throw new ProtocolException("Unexpected status line: " + paramString);
    }
    for (paramString = paramString.substring(i + 4);; paramString = "") {
      return new bnf(localNumberFormatException, j, paramString);
    }
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if (a == blz.a) {}
    for (String str = "HTTP/1.0";; str = "HTTP/1.1")
    {
      localStringBuilder.append(str);
      localStringBuilder.append(' ').append(b);
      if (c != null) {
        localStringBuilder.append(' ').append(c);
      }
      return localStringBuilder.toString();
    }
  }
}

/* Location:
 * Qualified Name:     bnf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */