import java.io.IOException;
import java.io.InputStream;

final class cbg$1
  extends InputStream
{
  cbg$1(cbg paramcbg) {}
  
  public final int available()
  {
    if (a.c) {
      throw new IOException("closed");
    }
    return (int)Math.min(a.a.b, 2147483647L);
  }
  
  public final void close()
  {
    a.close();
  }
  
  public final int read()
  {
    if (a.c) {
      throw new IOException("closed");
    }
    if ((a.a.b == 0L) && (a.b.a(a.a, 2048L) == -1L)) {
      return -1;
    }
    return a.a.f() & 0xFF;
  }
  
  public final int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (a.c) {
      throw new IOException("closed");
    }
    cbm.a(paramArrayOfByte.length, paramInt1, paramInt2);
    if ((a.a.b == 0L) && (a.b.a(a.a, 2048L) == -1L)) {
      return -1;
    }
    return a.a.a(paramArrayOfByte, paramInt1, paramInt2);
  }
  
  public final String toString()
  {
    return a + ".inputStream()";
  }
}

/* Location:
 * Qualified Name:     cbg.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */