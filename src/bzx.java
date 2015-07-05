import java.io.Serializable;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;

public final class bzx
  implements Serializable
{
  static final char[] a = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102 };
  public static final bzx b = a(new byte[0]);
  public final byte[] c;
  transient int d;
  transient String e;
  
  bzx(byte[] paramArrayOfByte)
  {
    c = paramArrayOfByte;
  }
  
  public static bzx a(String paramString)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("s == null");
    }
    bzx localbzx = new bzx(paramString.getBytes(cal.a));
    e = paramString;
    return localbzx;
  }
  
  public static bzx a(byte... paramVarArgs)
  {
    if (paramVarArgs == null) {
      throw new IllegalArgumentException("data == null");
    }
    return new bzx((byte[])paramVarArgs.clone());
  }
  
  public static bzx b(String paramString)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("base64 == null");
    }
    paramString = bzt.a(paramString);
    if (paramString != null) {
      return new bzx(paramString);
    }
    return null;
  }
  
  private bzx c(String paramString)
  {
    try
    {
      paramString = a(MessageDigest.getInstance(paramString).digest(c));
      return paramString;
    }
    catch (NoSuchAlgorithmException paramString)
    {
      throw new AssertionError(paramString);
    }
  }
  
  public final String a()
  {
    String str = e;
    if (str != null) {
      return str;
    }
    str = new String(c, cal.a);
    e = str;
    return str;
  }
  
  public final String b()
  {
    int i = 0;
    char[] arrayOfChar = new char[c.length * 2];
    byte[] arrayOfByte = c;
    int k = arrayOfByte.length;
    int j = 0;
    while (i < k)
    {
      int m = arrayOfByte[i];
      int n = j + 1;
      arrayOfChar[j] = a[(m >> 4 & 0xF)];
      j = n + 1;
      arrayOfChar[n] = a[(m & 0xF)];
      i += 1;
    }
    return new String(arrayOfChar);
  }
  
  public final bzx c()
  {
    int i = 0;
    for (;;)
    {
      Object localObject = this;
      if (i < c.length)
      {
        int j = c[i];
        if ((j >= 65) && (j <= 90))
        {
          localObject = (byte[])c.clone();
          localObject[i] = ((byte)(j + 32));
          i += 1;
          while (i < localObject.length)
          {
            j = localObject[i];
            if ((j >= 65) && (j <= 90)) {
              localObject[i] = ((byte)(j + 32));
            }
            i += 1;
          }
          localObject = new bzx((byte[])localObject);
        }
      }
      else
      {
        return (bzx)localObject;
      }
      i += 1;
    }
  }
  
  public final byte[] d()
  {
    return (byte[])c.clone();
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (((paramObject instanceof bzx)) && (c.length == c.length))
    {
      paramObject = (bzx)paramObject;
      byte[] arrayOfByte = c;
      int i = c.length;
      if ((c.length - i >= 0) && (arrayOfByte.length - i >= 0) && (cal.a(c, arrayOfByte, i))) {}
      for (i = 1; i != 0; i = 0) {
        return true;
      }
    }
    return false;
  }
  
  public final int hashCode()
  {
    int i = d;
    if (i != 0) {
      return i;
    }
    i = Arrays.hashCode(c);
    d = i;
    return i;
  }
  
  public final String toString()
  {
    if (c.length == 0) {
      return "ByteString[size=0]";
    }
    if (c.length <= 16) {
      return String.format("ByteString[size=%s data=%s]", new Object[] { Integer.valueOf(c.length), b() });
    }
    return String.format("ByteString[size=%s md5=%s]", new Object[] { Integer.valueOf(c.length), c("MD5").b() });
  }
}

/* Location:
 * Qualified Name:     bzx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */