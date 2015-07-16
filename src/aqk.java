import java.util.Iterator;

public final class aqk
  extends bgm
{
  public final bj a;
  public final bj b;
  public bh<aqk.b> c = new bh();
  public boolean d = false;
  public bgf e = bgf.a();
  public bgf f = bgf.a();
  private bgf g = bgf.a();
  
  public aqk()
  {
    this(awi.a());
  }
  
  private aqk(@chc bj parambj1, @chc bj parambj2)
  {
    a = ((bj)co.a(parambj1));
    b = ((bj)co.a(parambj2));
    parambj1 = new aqk.a((byte)0);
    a.a(parambj1);
    b.a(parambj1);
    a.b = false;
    b.b = false;
  }
  
  private aqk(@chc bp parambp)
  {
    this(parambp.a(), parambp.a());
  }
  
  public final aqk a(@chc bgf parambgf)
  {
    f();
    co.a(parambgf);
    if (d)
    {
      a.b(x);
      b.b(y);
      return this;
    }
    g = parambgf;
    return this;
  }
  
  public final aqk a(@chc bl parambl)
  {
    f();
    co.a(parambl);
    a.a(parambl);
    b.a(parambl);
    return this;
  }
  
  public final aqk a(boolean paramBoolean)
  {
    f();
    if (d == paramBoolean) {
      return this;
    }
    if (paramBoolean)
    {
      if (f != null)
      {
        a.c(f.x);
        b.c(f.y);
      }
      if (e != null)
      {
        a.a(e.x);
        b.a(e.y);
      }
      if (g != null)
      {
        a.b(g.x);
        b.b(g.y);
      }
      double d1 = a.h;
      a.b(d1 + 1.0D);
      a.b(d1);
      d1 = b.h;
      b.b(d1 + 1.0D);
      b.b(d1);
    }
    for (;;)
    {
      d = paramBoolean;
      return this;
      g = new bgf(a.h, b.h);
      e = new bgf(a.d.a, b.d.a);
      f = new bgf(a.d.b, b.d.b);
    }
  }
  
  public final aqk b(boolean paramBoolean)
  {
    f();
    a.b = paramBoolean;
    b.b = paramBoolean;
    return this;
  }
  
  public final void c()
  {
    a.a();
    b.a();
    c.a();
  }
  
  final class a
    implements bn
  {
    private a() {}
    
    public final void a()
    {
      if ((d) && (a.b()) && (b.b()))
      {
        Iterator localIterator = c.iterator();
        while (localIterator.hasNext()) {
          ((aqk.b)localIterator.next()).a();
        }
      }
    }
    
    public final void a(bj parambj)
    {
      if (d)
      {
        parambj = c.iterator();
        while (parambj.hasNext()) {
          ((aqk.b)parambj.next()).a(aqk.this);
        }
      }
    }
  }
  
  public static abstract interface b
  {
    public abstract void a();
    
    public abstract void a(@chc aqk paramaqk);
  }
}

/* Location:
 * Qualified Name:     aqk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */