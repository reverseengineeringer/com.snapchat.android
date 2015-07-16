import java.io.Closeable;
import java.io.File;
import java.nio.charset.Charset;

public abstract class bnc
{
  public static bnc a(bmx parambmx, String paramString)
  {
    Object localObject = bnq.c;
    bmx localbmx = parambmx;
    if (parambmx != null) {
      if (b == null) {
        break label74;
      }
    }
    label74:
    for (Charset localCharset = Charset.forName(b);; localCharset = null)
    {
      localObject = localCharset;
      localbmx = parambmx;
      if (localCharset == null)
      {
        localObject = bnq.c;
        localbmx = bmx.a(parambmx + "; charset=utf-8");
      }
      return a(localbmx, paramString.getBytes((Charset)localObject));
    }
  }
  
  public static bnc a(bmx parambmx, final byte[] paramArrayOfByte)
  {
    final int i = paramArrayOfByte.length;
    if (paramArrayOfByte == null) {
      throw new NullPointerException("content == null");
    }
    bnq.a(paramArrayOfByte.length, i);
    new bnc()
    {
      public final bmx a()
      {
        return a;
      }
      
      public final void a(caw paramAnonymouscaw)
      {
        paramAnonymouscaw.c(paramArrayOfByte, d, i);
      }
      
      public final long b()
      {
        return i;
      }
    };
  }
  
  public abstract bmx a();
  
  public abstract void a(caw paramcaw);
  
  public long b()
  {
    return -1L;
  }
}

/* Location:
 * Qualified Name:     bnc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */