import java.util.concurrent.TimeUnit;

@cc
@cd
public final class cs
{
  public boolean a;
  private final cu b;
  private long c;
  private long d;
  
  @Deprecated
  public cs()
  {
    this(cu.b());
  }
  
  @Deprecated
  private cs(cu paramcu)
  {
    b = ((cu)co.a(paramcu, "ticker"));
  }
  
  private long c()
  {
    if (a) {
      return b.a() - d + c;
    }
    return c;
  }
  
  public final long a(TimeUnit paramTimeUnit)
  {
    return paramTimeUnit.convert(c(), TimeUnit.NANOSECONDS);
  }
  
  public final cs a()
  {
    if (!a) {}
    for (boolean bool = true;; bool = false)
    {
      co.b(bool, "This stopwatch is already running.");
      a = true;
      d = b.a();
      return this;
    }
  }
  
  public final cs b()
  {
    long l1 = b.a();
    co.b(a, "This stopwatch is already stopped.");
    a = false;
    long l2 = c;
    c = (l1 - d + l2);
    return this;
  }
  
  @ce
  public final String toString()
  {
    long l = c();
    if (TimeUnit.DAYS.convert(l, TimeUnit.NANOSECONDS) > 0L) {
      localObject = TimeUnit.DAYS;
    }
    double d1;
    for (;;)
    {
      d1 = l / TimeUnit.NANOSECONDS.convert(1L, (TimeUnit)localObject);
      switch (cs.1.a[localObject.ordinal()])
      {
      default: 
        throw new AssertionError();
        if (TimeUnit.HOURS.convert(l, TimeUnit.NANOSECONDS) > 0L) {
          localObject = TimeUnit.HOURS;
        } else if (TimeUnit.MINUTES.convert(l, TimeUnit.NANOSECONDS) > 0L) {
          localObject = TimeUnit.MINUTES;
        } else if (TimeUnit.SECONDS.convert(l, TimeUnit.NANOSECONDS) > 0L) {
          localObject = TimeUnit.SECONDS;
        } else if (TimeUnit.MILLISECONDS.convert(l, TimeUnit.NANOSECONDS) > 0L) {
          localObject = TimeUnit.MILLISECONDS;
        } else if (TimeUnit.MICROSECONDS.convert(l, TimeUnit.NANOSECONDS) > 0L) {
          localObject = TimeUnit.MICROSECONDS;
        } else {
          localObject = TimeUnit.NANOSECONDS;
        }
        break;
      }
    }
    Object localObject = "ns";
    for (;;)
    {
      return String.format("%.4g %s", new Object[] { Double.valueOf(d1), localObject });
      localObject = "μs";
      continue;
      localObject = "ms";
      continue;
      localObject = "s";
      continue;
      localObject = "min";
      continue;
      localObject = "h";
      continue;
      localObject = "d";
    }
  }
}

/* Location:
 * Qualified Name:     cs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */