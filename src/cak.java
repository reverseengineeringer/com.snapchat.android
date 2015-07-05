import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;

public class cak
{
  public static final cak b = new cak()
  {
    public final cak a(long paramAnonymousLong)
    {
      return this;
    }
    
    public final cak a(long paramAnonymousLong, TimeUnit paramAnonymousTimeUnit)
    {
      return this;
    }
    
    public final void g() {}
  };
  private long a;
  public boolean c;
  long d;
  
  public cak a(long paramLong)
  {
    c = true;
    a = paramLong;
    return this;
  }
  
  public cak a(long paramLong, TimeUnit paramTimeUnit)
  {
    if (paramLong < 0L) {
      throw new IllegalArgumentException("timeout < 0: " + paramLong);
    }
    if (paramTimeUnit == null) {
      throw new IllegalArgumentException("unit == null");
    }
    d = paramTimeUnit.toNanos(paramLong);
    return this;
  }
  
  public final long f()
  {
    if (!c) {
      throw new IllegalStateException("No deadline");
    }
    return a;
  }
  
  public void g()
  {
    if (Thread.interrupted()) {
      throw new InterruptedIOException();
    }
    if ((c) && (System.nanoTime() > a)) {
      throw new IOException("deadline reached");
    }
  }
}

/* Location:
 * Qualified Name:     cak
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */