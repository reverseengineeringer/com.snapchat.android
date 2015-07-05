import java.io.File;
import java.io.FileNotFoundException;

public final class bmg$a
{
  final bmg.b a;
  final boolean[] b;
  boolean c;
  private boolean e;
  
  private bmg$a(bmg parambmg, bmg.b paramb)
  {
    a = paramb;
    if (e) {}
    for (parambmg = null;; parambmg = new boolean[bmg.h(parambmg)])
    {
      b = parambmg;
      return;
    }
  }
  
  public final cai a(int paramInt)
  {
    synchronized (d)
    {
      if (a.f != this) {
        throw new IllegalStateException();
      }
    }
    if (!a.e) {
      b[paramInt] = true;
    }
    Object localObject2 = a.d[paramInt];
    try
    {
      localObject2 = bmg.i(d).b((File)localObject2);
      localObject2 = new bmh((cai)localObject2)
      {
        protected final void a()
        {
          synchronized (d)
          {
            c = true;
            return;
          }
        }
      };
      return (cai)localObject2;
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      cai localcai = bmg.a();
      return localcai;
    }
  }
  
  public final void a()
  {
    synchronized (d)
    {
      if (c)
      {
        bmg.a(d, this, false);
        bmg.a(d, a);
        e = true;
        return;
      }
      bmg.a(d, this, true);
    }
  }
  
  public final void b()
  {
    synchronized (d)
    {
      bmg.a(d, this, false);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     bmg.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */