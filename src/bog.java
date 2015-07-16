import java.net.ProtocolException;

public final class bog
{
  public final bna a;
  public final int b;
  public final String c;
  
  public bog(bna parambna, int paramInt, String paramString)
  {
    a = parambna;
    b = paramInt;
    c = paramString;
  }
  
  public static bog a(String paramString)
  {
    int i = 9;
    int j;
    bna localbna;
    if (paramString.startsWith("HTTP/1."))
    {
      if ((paramString.length() < 9) || (paramString.charAt(8) != ' ')) {
        throw new ProtocolException("Unexpected status line: " + paramString);
      }
      j = paramString.charAt(7) - '0';
      if (j == 0) {
        localbna = bna.a;
      }
    }
    while (paramString.length() < i + 3)
    {
      throw new ProtocolException("Unexpected status line: " + paramString);
      if (j == 1)
      {
        localbna = bna.b;
      }
      else
      {
        throw new ProtocolException("Unexpected status line: " + paramString);
        if (paramString.startsWith("ICY "))
        {
          localbna = bna.a;
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
      return new bog(localNumberFormatException, j, paramString);
    }
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if (a == bna.a) {}
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
 * Qualified Name:     bog
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */