import android.os.SystemClock;
import java.util.LinkedHashSet;
import java.util.Set;

public final class zt
{
  public final Object a = new Object();
  public final Set<zu> b = new LinkedHashSet();
  public final aka c;
  public final boolean d;
  public long e = Long.MAX_VALUE;
  public long f = Long.MAX_VALUE;
  private final bhk g;
  
  public zt(aka paramaka, boolean paramBoolean)
  {
    this(new bhk(), paramaka, paramBoolean);
  }
  
  private zt(bhk parambhk, aka paramaka, boolean paramBoolean)
  {
    g = parambhk;
    c = paramaka;
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
  
  public final void a(zu paramzu)
  {
    synchronized (a)
    {
      b.add(paramzu);
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
  
  public final Set<zu> d()
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
 * Qualified Name:     zt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */