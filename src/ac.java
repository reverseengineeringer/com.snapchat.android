import android.support.v4.util.Pools.Pool;
import android.support.v4.util.Pools.SimplePool;
import android.support.v7.widget.RecyclerView.s;
import java.util.ArrayList;
import java.util.List;

public final class ac
  implements ag.a
{
  public final ArrayList<ac.b> a = new ArrayList();
  final ArrayList<ac.b> b = new ArrayList();
  final ac.a c;
  Runnable d;
  final boolean e;
  final ag f;
  private Pools.Pool<ac.b> g = new Pools.SimplePool(30);
  
  public ac(ac.a parama)
  {
    this(parama, (byte)0);
  }
  
  private ac(ac.a parama, byte paramByte)
  {
    c = parama;
    e = false;
    f = new ag(this);
  }
  
  private void a(ac.b paramb, int paramInt)
  {
    c.a(paramb);
    switch (a)
    {
    default: 
      throw new IllegalArgumentException("only remove and update ops can be dispatched in first pass");
    case 1: 
      c.a(paramInt, c);
      return;
    }
    c.c(paramInt, c);
  }
  
  private void a(List<ac.b> paramList)
  {
    int j = paramList.size();
    int i = 0;
    while (i < j)
    {
      a((ac.b)paramList.get(i));
      i += 1;
    }
    paramList.clear();
  }
  
  private int b(int paramInt1, int paramInt2)
  {
    int i = b.size() - 1;
    ac.b localb;
    if (i >= 0)
    {
      localb = (ac.b)b.get(i);
      int k;
      int j;
      if (a == 3) {
        if (b < c)
        {
          k = b;
          j = c;
          label63:
          if ((paramInt1 < k) || (paramInt1 > j)) {
            break label192;
          }
          if (k != b) {
            break label149;
          }
          if (paramInt2 != 0) {
            break label129;
          }
          c += 1;
          label101:
          paramInt1 += 1;
        }
      }
      for (;;)
      {
        i -= 1;
        break;
        k = c;
        j = b;
        break label63;
        label129:
        if (paramInt2 != 1) {
          break label101;
        }
        c -= 1;
        break label101;
        label149:
        if (paramInt2 == 0) {
          b += 1;
        }
        for (;;)
        {
          paramInt1 -= 1;
          break;
          if (paramInt2 == 1) {
            b -= 1;
          }
        }
        label192:
        if (paramInt1 < b)
        {
          if (paramInt2 == 0)
          {
            b += 1;
            c += 1;
            continue;
          }
          if (paramInt2 == 1)
          {
            b -= 1;
            c -= 1;
          }
        }
        continue;
        if (b <= paramInt1)
        {
          if (a == 0) {
            paramInt1 -= c;
          } else if (a == 1) {
            paramInt1 = c + paramInt1;
          }
        }
        else if (paramInt2 == 0) {
          b += 1;
        } else if (paramInt2 == 1) {
          b -= 1;
        }
      }
    }
    paramInt2 = b.size() - 1;
    if (paramInt2 >= 0)
    {
      localb = (ac.b)b.get(paramInt2);
      if (a == 3) {
        if ((c == b) || (c < 0))
        {
          b.remove(paramInt2);
          a(localb);
        }
      }
      for (;;)
      {
        paramInt2 -= 1;
        break;
        if (c <= 0)
        {
          b.remove(paramInt2);
          a(localb);
        }
      }
    }
    return paramInt1;
  }
  
  private void b(ac.b paramb)
  {
    if ((a == 0) || (a == 3)) {
      throw new IllegalArgumentException("should not dispatch add or move for pre layout");
    }
    int i1 = b(b, a);
    int j = b;
    int k;
    int n;
    int m;
    label105:
    int i2;
    switch (a)
    {
    default: 
      throw new IllegalArgumentException("op should be remove or update." + paramb);
    case 2: 
      k = 1;
      n = 1;
      m = 1;
      if (m >= c) {
        break label282;
      }
      i2 = b(b + k * m, a);
      switch (a)
      {
      default: 
        i = 0;
        label162:
        if (i == 0) {}
        break;
      }
      break;
    }
    for (int i = n + 1;; i = n)
    {
      m += 1;
      n = i;
      break label105;
      k = 0;
      break;
      if (i2 == i1 + 1)
      {
        i = 1;
        break label162;
      }
      i = 0;
      break label162;
      if (i2 == i1)
      {
        i = 1;
        break label162;
      }
      i = 0;
      break label162;
      ac.b localb = a(a, i1, n);
      a(localb, j);
      a(localb);
      i = j;
      if (a == 2) {
        i = j + n;
      }
      n = 1;
      i1 = i2;
      j = i;
    }
    label282:
    a(paramb);
    if (n > 0)
    {
      paramb = a(a, i1, n);
      a(paramb, j);
      a(paramb);
    }
  }
  
  private boolean b(int paramInt)
  {
    int k = b.size();
    int i = 0;
    while (i < k)
    {
      ac.b localb = (ac.b)b.get(i);
      if (a == 3)
      {
        if (a(c, i + 1) == paramInt) {
          return true;
        }
      }
      else if (a == 0)
      {
        int m = b;
        int n = c;
        int j = b;
        while (j < m + n)
        {
          if (a(j, i + 1) == paramInt) {
            return true;
          }
          j += 1;
        }
      }
      i += 1;
    }
    return false;
  }
  
  private void c(ac.b paramb)
  {
    b.add(paramb);
    switch (a)
    {
    default: 
      throw new IllegalArgumentException("Unknown update op type for " + paramb);
    case 0: 
      c.d(b, c);
      return;
    case 3: 
      c.e(b, c);
      return;
    case 1: 
      c.b(b, c);
      return;
    }
    c.c(b, c);
  }
  
  public final int a(int paramInt)
  {
    return a(paramInt, 0);
  }
  
  public final int a(int paramInt1, int paramInt2)
  {
    int k = b.size();
    int j = paramInt2;
    paramInt2 = paramInt1;
    paramInt1 = paramInt2;
    ac.b localb;
    if (j < k)
    {
      localb = (ac.b)b.get(j);
      if (a == 3) {
        if (b == paramInt2) {
          paramInt1 = c;
        }
      }
    }
    for (;;)
    {
      j += 1;
      paramInt2 = paramInt1;
      break;
      int i = paramInt2;
      if (b < paramInt2) {
        i = paramInt2 - 1;
      }
      paramInt1 = i;
      if (c <= i)
      {
        paramInt1 = i + 1;
        continue;
        paramInt1 = paramInt2;
        if (b <= paramInt2) {
          if (a == 1)
          {
            if (paramInt2 < b + c)
            {
              paramInt1 = -1;
              return paramInt1;
            }
            paramInt1 = paramInt2 - c;
          }
          else
          {
            paramInt1 = paramInt2;
            if (a == 0) {
              paramInt1 = paramInt2 + c;
            }
          }
        }
      }
    }
  }
  
  public final ac.b a(int paramInt1, int paramInt2, int paramInt3)
  {
    ac.b localb = (ac.b)g.acquire();
    if (localb == null) {
      return new ac.b(paramInt1, paramInt2, paramInt3);
    }
    a = paramInt1;
    b = paramInt2;
    c = paramInt3;
    return localb;
  }
  
  public final void a()
  {
    a(a);
    a(b);
  }
  
  public final void a(ac.b paramb)
  {
    if (!e) {
      g.release(paramb);
    }
  }
  
  public final void b()
  {
    ag localag = f;
    ArrayList localArrayList = a;
    int i;
    label24:
    label52:
    int i1;
    ac.b localb2;
    ac.b localb3;
    int k;
    for (;;)
    {
      j = 0;
      i = localArrayList.size() - 1;
      if (i < 0) {
        break label264;
      }
      if (geta != 3) {
        break;
      }
      if (j == 0) {
        break label1781;
      }
      j = i;
      if (j == -1) {
        break label1236;
      }
      i1 = j + 1;
      localb2 = (ac.b)localArrayList.get(j);
      localb3 = (ac.b)localArrayList.get(i1);
      switch (a)
      {
      default: 
        break;
      case 0: 
        i = 0;
        if (c < b) {
          i = -1;
        }
        k = i;
        if (b < b) {
          k = i + 1;
        }
        if (b <= b) {
          b += c;
        }
        if (b <= c) {
          c += c;
        }
        b = (k + b);
        localArrayList.set(j, localb3);
        localArrayList.set(i1, localb2);
      }
    }
    int j = 1;
    label264:
    label340:
    label365:
    label487:
    label563:
    label650:
    label775:
    label953:
    label997:
    label1022:
    label1139:
    label1212:
    label1236:
    label1425:
    label1492:
    label1781:
    for (;;)
    {
      i -= 1;
      break label24;
      j = -1;
      break label52;
      ac.b localb1 = null;
      int m = 0;
      int n;
      if (b < c)
      {
        n = 0;
        k = n;
        i = m;
        if (b == b)
        {
          k = n;
          i = m;
          if (c == c - b)
          {
            i = 1;
            k = n;
          }
        }
        if (c >= b) {
          break label487;
        }
        b -= 1;
        if (b > b) {
          break label563;
        }
        b += 1;
      }
      int i2;
      for (;;)
      {
        if (i == 0) {
          break label650;
        }
        localArrayList.set(j, localb3);
        localArrayList.remove(i1);
        a.a(localb2);
        break;
        n = 1;
        k = n;
        i = m;
        if (b != c + 1) {
          break label340;
        }
        k = n;
        i = m;
        if (c != b - c) {
          break label340;
        }
        i = 1;
        k = n;
        break label340;
        if (c >= b + c) {
          break label365;
        }
        c -= 1;
        a = 1;
        c = 1;
        if (c != 0) {
          break;
        }
        localArrayList.remove(i1);
        a.a(localb3);
        break;
        if (b < b + c)
        {
          m = b;
          n = c;
          i2 = b;
          localb1 = a.a(1, b + 1, m + n - i2);
          c = (b - b);
        }
      }
      if (k != 0)
      {
        if (localb1 != null)
        {
          if (b > b) {
            b -= c;
          }
          if (c > b) {
            c -= c;
          }
        }
        if (b > b) {
          b -= c;
        }
        if (c > b) {
          c -= c;
        }
        localArrayList.set(j, localb3);
        if (b == c) {
          break label953;
        }
        localArrayList.set(i1, localb2);
      }
      while (localb1 != null)
      {
        localArrayList.add(j, localb1);
        break;
        if (localb1 != null)
        {
          if (b >= b) {
            b -= c;
          }
          if (c >= b) {
            c -= c;
          }
        }
        if (b >= b) {
          b -= c;
        }
        if (c < b) {
          break label775;
        }
        c -= c;
        break label775;
        localArrayList.remove(i1);
      }
      localb1 = null;
      Object localObject = null;
      if (c < b)
      {
        b -= 1;
        if (b > b) {
          break label1139;
        }
        b += 1;
        localArrayList.set(i1, localb2);
        if (c <= 0) {
          break label1212;
        }
        localArrayList.set(j, localb3);
      }
      for (;;)
      {
        if (localb1 != null) {
          localArrayList.add(j, localb1);
        }
        if (localObject == null) {
          break;
        }
        localArrayList.add(j, localObject);
        break;
        if (c >= b + c) {
          break label997;
        }
        c -= 1;
        localb1 = a.a(2, b, 1);
        break label997;
        if (b >= b + c) {
          break label1022;
        }
        i = b + c - b;
        localObject = a.a(2, b + 1, i);
        c -= i;
        break label1022;
        localArrayList.remove(j);
        a.a(localb3);
      }
      int i3 = a.size();
      i1 = 0;
      if (i1 < i3)
      {
        localb1 = (ac.b)a.get(i1);
        switch (a)
        {
        }
        for (;;)
        {
          if (d != null) {
            d.run();
          }
          i1 += 1;
          break;
          c(localb1);
          continue;
          int i4 = b;
          i = b;
          k = c + i;
          i2 = -1;
          i = b;
          n = 0;
          if (i < k)
          {
            j = 0;
            m = 0;
            if ((c.a(i) != null) || (b(i)))
            {
              if (i2 == 0)
              {
                b(a(1, i4, n));
                m = 1;
              }
              j = 1;
              if (m == 0) {
                break label1492;
              }
              m = i - n;
              i = k - n;
            }
            for (k = 1;; k = n)
            {
              n = k;
              k = i;
              i = m + 1;
              i2 = j;
              break;
              if (i2 == 1)
              {
                c(a(1, i4, n));
                j = 1;
              }
              i2 = 0;
              m = j;
              j = i2;
              break label1425;
              n += 1;
              m = i;
              i = k;
            }
          }
          localObject = localb1;
          if (n != c)
          {
            a(localb1);
            localObject = a(1, i4, n);
          }
          if (i2 == 0)
          {
            b((ac.b)localObject);
          }
          else
          {
            c((ac.b)localObject);
            continue;
            k = b;
            i4 = b;
            int i5 = c;
            i = b;
            j = 0;
            i2 = -1;
            if (i < i4 + i5)
            {
              if ((c.a(i) != null) || (b(i)))
              {
                m = j;
                n = k;
                if (i2 == 0)
                {
                  b(a(2, k, j));
                  m = 0;
                  n = i;
                }
                k = n;
              }
              for (j = 1;; j = 0)
              {
                i += 1;
                m += 1;
                i2 = j;
                j = m;
                break;
                m = j;
                n = k;
                if (i2 == 1)
                {
                  c(a(2, k, j));
                  m = 0;
                  n = i;
                }
                k = n;
              }
            }
            localObject = localb1;
            if (j != c)
            {
              a(localb1);
              localObject = a(2, k, j);
            }
            if (i2 == 0)
            {
              b((ac.b)localObject);
            }
            else
            {
              c((ac.b)localObject);
              continue;
              c(localb1);
            }
          }
        }
      }
      a.clear();
      return;
    }
  }
  
  public final void c()
  {
    int j = b.size();
    int i = 0;
    while (i < j)
    {
      c.b((ac.b)b.get(i));
      i += 1;
    }
    a(b);
  }
  
  public final boolean d()
  {
    return a.size() > 0;
  }
  
  public final void e()
  {
    c();
    int j = a.size();
    int i = 0;
    if (i < j)
    {
      ac.b localb = (ac.b)a.get(i);
      switch (a)
      {
      }
      for (;;)
      {
        if (d != null) {
          d.run();
        }
        i += 1;
        break;
        c.b(localb);
        c.d(b, c);
        continue;
        c.b(localb);
        c.a(b, c);
        continue;
        c.b(localb);
        c.c(b, c);
        continue;
        c.b(localb);
        c.e(b, c);
      }
    }
    a(a);
  }
  
  public static abstract interface a
  {
    public abstract RecyclerView.s a(int paramInt);
    
    public abstract void a(int paramInt1, int paramInt2);
    
    public abstract void a(ac.b paramb);
    
    public abstract void b(int paramInt1, int paramInt2);
    
    public abstract void b(ac.b paramb);
    
    public abstract void c(int paramInt1, int paramInt2);
    
    public abstract void d(int paramInt1, int paramInt2);
    
    public abstract void e(int paramInt1, int paramInt2);
  }
  
  public static final class b
  {
    public int a;
    public int b;
    public int c;
    
    b(int paramInt1, int paramInt2, int paramInt3)
    {
      a = paramInt1;
      b = paramInt2;
      c = paramInt3;
    }
    
    public final boolean equals(Object paramObject)
    {
      if (this == paramObject) {}
      do
      {
        do
        {
          return true;
          if ((paramObject == null) || (getClass() != paramObject.getClass())) {
            return false;
          }
          paramObject = (b)paramObject;
          if (a != a) {
            return false;
          }
        } while ((a == 3) && (Math.abs(c - b) == 1) && (c == b) && (b == c));
        if (c != c) {
          return false;
        }
      } while (b == b);
      return false;
    }
    
    public final int hashCode()
    {
      return (a * 31 + b) * 31 + c;
    }
    
    public final String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder("[");
      String str;
      switch (a)
      {
      default: 
        str = "??";
      }
      for (;;)
      {
        return str + ",s:" + b + "c:" + c + "]";
        str = "add";
        continue;
        str = "rm";
        continue;
        str = "up";
        continue;
        str = "mv";
      }
    }
  }
}

/* Location:
 * Qualified Name:     ac
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */