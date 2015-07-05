import java.io.Closeable;

public final class bmg$c
  implements Closeable
{
  public final String a;
  public final long b;
  public final caj[] c;
  private final long[] e;
  
  private bmg$c(bmg parambmg, String paramString, long paramLong, caj[] paramArrayOfcaj, long[] paramArrayOfLong)
  {
    a = paramString;
    b = paramLong;
    c = paramArrayOfcaj;
    e = paramArrayOfLong;
  }
  
  public final void close()
  {
    caj[] arrayOfcaj = c;
    int j = arrayOfcaj.length;
    int i = 0;
    while (i < j)
    {
      bmp.a(arrayOfcaj[i]);
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     bmg.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */