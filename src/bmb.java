import java.io.Closeable;
import java.io.File;
import java.nio.charset.Charset;

public abstract class bmb
{
  public static bmb a(blw paramblw, String paramString)
  {
    Object localObject = bmp.c;
    blw localblw = paramblw;
    if (paramblw != null) {
      if (b == null) {
        break label74;
      }
    }
    label74:
    for (Charset localCharset = Charset.forName(b);; localCharset = null)
    {
      localObject = localCharset;
      localblw = paramblw;
      if (localCharset == null)
      {
        localObject = bmp.c;
        localblw = blw.a(paramblw + "; charset=utf-8");
      }
      return a(localblw, paramString.getBytes((Charset)localObject));
    }
  }
  
  public static bmb a(blw paramblw, final byte[] paramArrayOfByte)
  {
    final int i = paramArrayOfByte.length;
    if (paramArrayOfByte == null) {
      throw new NullPointerException("content == null");
    }
    bmp.a(paramArrayOfByte.length, i);
    new bmb()
    {
      public final blw a()
      {
        return a;
      }
      
      public final void a(bzv paramAnonymousbzv)
      {
        paramAnonymousbzv.c(paramArrayOfByte, d, i);
      }
      
      public final long b()
      {
        return i;
      }
    };
  }
  
  public abstract blw a();
  
  public abstract void a(bzv parambzv);
  
  public long b()
  {
    return -1L;
  }
}

/* Location:
 * Qualified Name:     bmb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */