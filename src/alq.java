import java.util.concurrent.atomic.AtomicInteger;

public final class alq
{
  private static AtomicInteger e = new AtomicInteger(0);
  public int a = 0;
  public long b = 0L;
  public long c = 0L;
  public int d = 0;
  private final bgk f;
  
  public alq()
  {
    this(new bgk());
  }
  
  private alq(bgk parambgk)
  {
    f = ((bgk)ck.a(parambgk));
  }
  
  public static class a
  {
    public final long a;
    public final long b;
    public final int c;
    
    public a(long paramLong1, long paramLong2, int paramInt)
    {
      b = paramLong2;
      a = paramLong1;
      c = paramInt;
    }
    
    public String toString()
    {
      return ci.a(a.class).a("durationMs", a).a("bytesReceived", b).a("downloadCount", c).toString();
    }
  }
}

/* Location:
 * Qualified Name:     alq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */