import android.graphics.Point;
import java.util.HashSet;
import java.util.Random;
import java.util.Set;

public final class xw
  implements xv
{
  @cgb
  private final int a;
  @cgb
  private final int b;
  @cgb
  private final int c;
  private Random d = new Random();
  private Set<Integer> e = new HashSet();
  @cgb
  private final int f;
  
  private xw(xw.a parama)
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
 * Qualified Name:     xw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */