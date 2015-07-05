import android.os.SystemClock;
import java.util.LinkedHashSet;
import java.util.Set;

public final class yx
{
  public final Object a = new Object();
  public final Set<yy> b = new LinkedHashSet();
  public final aje c;
  public final boolean d;
  public long e = Long.MAX_VALUE;
  public long f = Long.MAX_VALUE;
  private final bgk g;
  
  public yx(aje paramaje, boolean paramBoolean)
  {
    this(new bgk(), paramaje, paramBoolean);
  }
  
  private yx(bgk parambgk, aje paramaje, boolean paramBoolean)
  {
    g = parambgk;
    c = paramaje;
    d = paramBoolean;
  }
  
  public final long a()
  {
    if (!c()) {
      throw new IllegalStateException("Countdown not yet started for this snap.");
    }
    if (b()) {
      return e;
    }
    long l = SystemClock.elapsedRealtime();
    return Math.max(0L, f - l);
  }
  
  public final void a(yy paramyy)
  {
    synchronized (a)
    {
      b.add(paramyy);
      return;
    }
  }
  
  public final boolean b()
  {
    return e != Long.MAX_VALUE;
  }
  
  public final boolean c()
  {
    return f != Long.MAX_VALUE;
  }
  
  public final Set<yy> d()
  {
    LinkedHashSet localLinkedHashSet = new LinkedHashSet();
    synchronized (a)
    {
      localLinkedHashSet.addAll(b);
      return localLinkedHashSet;
    }
  }
  
  public final String toString()
  {
    return String.format("[Countdown snap:%s]", new Object[] { c });
  }
}

/* Location:
 * Qualified Name:     yx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */