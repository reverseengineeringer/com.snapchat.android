import java.io.Closeable;

public final class bnh$c
  implements Closeable
{
  public final String a;
  public final long b;
  public final cbk[] c;
  private final long[] e;
  
  private bnh$c(bnh parambnh, String paramString, long paramLong, cbk[] paramArrayOfcbk, long[] paramArrayOfLong)
  {
    a = paramString;
    b = paramLong;
    c = paramArrayOfcbk;
    e = paramArrayOfLong;
  }
  
  public final void close()
  {
    cbk[] arrayOfcbk = c;
    int j = arrayOfcbk.length;
    int i = 0;
    while (i < j)
    {
      bnq.a(arrayOfcbk[i]);
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     bnh.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */