import android.graphics.Point;
import java.util.HashSet;
import java.util.Random;
import java.util.Set;

public final class ys
  implements yr
{
  @chc
  private final int a;
  @chc
  private final int b;
  @chc
  private final int c;
  private Random d = new Random();
  private Set<Integer> e = new HashSet();
  @chc
  private final int f;
  
  private ys(ys.a parama)
  {
    a = a;
    b = b;
    c = ((int)(c * 1.5F));
    f = (Math.max(a / c, b / c) + 1);
  }
  
  private Integer b(Point paramPoint)
  {
    return Integer.valueOf(x * f / c + y / c);
  }
  
  public final Point a()
  {
    for (;;)
    {
      Point localPoint = new Point(d.nextInt(a - c) + c / 2, d.nextInt(b - c) + c / 2);
      Integer localInteger = b(localPoint);
      synchronized (e)
      {
        if (!e.contains(localInteger))
        {
          e.add(localInteger);
          return localPoint;
        }
      }
    }
  }
  
  public final void a(Point paramPoint)
  {
    synchronized (e)
    {
      e.remove(b(paramPoint));
      return;
    }
  }
  
  public static final class a
  {
    public int a;
    public int b;
    public int c;
  }
}

/* Location:
 * Qualified Name:     ys
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */