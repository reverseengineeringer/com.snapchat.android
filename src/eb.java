import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

@cc
public final class eb
{
  private static final OutputStream a = new OutputStream()
  {
    public final String toString()
    {
      return "ByteStreams.nullOutputStream()";
    }
    
    public final void write(int paramAnonymousInt) {}
    
    public final void write(byte[] paramAnonymousArrayOfByte)
    {
      ck.a(paramAnonymousArrayOfByte);
    }
    
    public final void write(byte[] paramAnonymousArrayOfByte, int paramAnonymousInt1, int paramAnonymousInt2)
    {
      ck.a(paramAnonymousArrayOfByte);
    }
  };
  
  private static long a(InputStream paramInputStream, OutputStream paramOutputStream)
  {
    ck.a(paramInputStream);
    ck.a(paramOutputStream);
    byte[] arrayOfByte = new byte['က'];
    int i;
    for (long l = 0L;; l += i)
    {
      i = paramInputStream.read(arrayOfByte);
      if (i == -1) {
        break;
      }
      paramOutputStream.write(arrayOfByte, 0, i);
    }
    return l;
  }
  
  public static byte[] a(InputStream paramInputStream)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    a(paramInputStream, localByteArrayOutputStream);
    return localByteArrayOutputStream.toByteArray();
  }
}

/* Location:
 * Qualified Name:     eb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */