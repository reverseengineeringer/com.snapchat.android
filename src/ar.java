import java.io.UnsupportedEncodingException;

public final class ar
{
  public static String a(byte[] paramArrayOfByte)
  {
    try
    {
      paramArrayOfByte = new String(paramArrayOfByte, "UTF-8");
      return paramArrayOfByte;
    }
    catch (UnsupportedEncodingException paramArrayOfByte)
    {
      throw new Error(paramArrayOfByte);
    }
  }
  
  public static byte[] a(String paramString)
  {
    if (paramString != null) {}
    try
    {
      paramString = paramString.getBytes("UTF-8");
      return paramString;
    }
    catch (UnsupportedEncodingException paramString)
    {
      throw new Error(paramString);
    }
    return null;
  }
  
  public static int b(String paramString)
  {
    if (paramString != null) {}
    try
    {
      int i = paramString.getBytes("UTF-8").length;
      return i;
    }
    catch (UnsupportedEncodingException paramString)
    {
      throw new RuntimeException();
    }
    return 0;
  }
}

/* Location:
 * Qualified Name:     ar
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */