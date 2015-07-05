import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;

public class bf
{
  final Map<String, bj> a = new HashMap();
  final Set<bj> b = new CopyOnWriteArraySet();
  final bo c;
  boolean d = true;
  private final bk e;
  private long f = -1L;
  private bh<Object> g = new bh();
  
  public bf(bk parambk, bo parambo)
  {
    if (parambk == null) {
      throw new IllegalArgumentException("clock is required");
    }
    if (parambo == null) {
      throw new IllegalArgumentException("springLooper is required");
    }
    e = parambk;
    c = parambo;
    c.a(this);
  }
  
  public final bj a()
  {
    bj localbj = new bj(this);
    if (a.containsKey(c)) {
      throw new IllegalArgumentException("spring is already registered");
    }
    a.put(c, localbj);
    return localbj;
  }
  
  public final void b()
  {
    long l1 = System.currentTimeMillis();
    if (f == -1L) {
      f = (l1 - 1L);
    }
    long l2 = f;
    f = l1;
    Iterator localIterator = g.iterator();
    while (localIterator.hasNext()) {
      localIterator.next();
    }
    localIterator = b.iterator();
    bj localbj;
    int i;
    boolean bool;
    Object localObject2;
    if (localIterator.hasNext())
    {
      localbj = (bj)localIterator.next();
      if ((!localbj.b()) || (!i)) {
        i = 1;
      }
      for (;;)
      {
        if (i != 0)
        {
          double d2 = (l1 - l2) / 1000.0D;
          bool = localbj.b();
          if ((bool) && (i)) {
            break;
          }
          double d1 = d2;
          if (d2 > 0.064D) {
            d1 = 0.064D;
          }
          k = (d1 + k);
          double d5 = a.b;
          double d6 = a.a;
          d2 = d.a;
          d1 = d.b;
          double d4 = f.a;
          double d3 = f.b;
          for (;;)
          {
            if (k >= 0.001D)
            {
              k -= 0.001D;
              if (k < 0.001D)
              {
                e.a = d2;
                e.b = d1;
              }
              double d7 = (h - d4) * d5 - d6 * d1;
              double d11 = d1 + 0.001D * d7 * 0.5D;
              double d8 = (h - (0.001D * d1 * 0.5D + d2)) * d5 - d6 * d11;
              double d12 = d1 + 0.001D * d8 * 0.5D;
              double d9 = (h - (0.001D * d11 * 0.5D + d2)) * d5 - d6 * d12;
              d4 = d2 + 0.001D * d12;
              d3 = 0.001D * d9 + d1;
              double d10 = h;
              d2 += ((d11 + d12) * 2.0D + d1 + d3) * 0.16666666666666666D * 0.001D;
              d1 += (d7 + (d8 + d9) * 2.0D + ((d10 - d4) * d5 - d6 * d3)) * 0.16666666666666666D * 0.001D;
              continue;
              i = 0;
              break;
            }
          }
          f.a = d4;
          f.b = d3;
          d.a = d2;
          d.b = d1;
          if (k > 0.0D)
          {
            d1 = k / 0.001D;
            d.a = (d.a * d1 + e.a * (1.0D - d1));
            localObject2 = d;
            d2 = d.b;
            b = ((1.0D - d1) * e.b + d2 * d1);
          }
          if (!localbj.b())
          {
            if (!b) {
              break label932;
            }
            if (((g < h) && (d.a > h)) || ((g > h) && (d.a < h)))
            {
              i = 1;
              label703:
              if (i == 0) {
                break label932;
              }
            }
          }
          else
          {
            g = h;
            d.a = h;
            localbj.c(0.0D);
            bool = true;
          }
        }
      }
    }
    label925:
    label932:
    for (;;)
    {
      if (i) {
        i = false;
      }
      if (bool) {
        i = true;
      }
      for (i = 1;; i = 0)
      {
        localObject2 = j.iterator();
        while (((Iterator)localObject2).hasNext())
        {
          bn localbn = (bn)((Iterator)localObject2).next();
          localbn.a(localbj);
          if (i != 0) {
            localbn.a();
          }
        }
        break;
        i = 0;
        break label703;
        b.remove(localbj);
        break;
        try
        {
          if (b.isEmpty())
          {
            d = true;
            f = -1L;
          }
          localIterator = g.iterator();
          while (localIterator.hasNext()) {
            localIterator.next();
          }
          if (!d) {
            break label925;
          }
        }
        finally {}
        c.b();
        return;
      }
    }
  }
}

/* Location:
 * Qualified Name:     bf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */