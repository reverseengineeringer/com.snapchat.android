import java.util.Iterator;

public final class apl
  extends bfm
{
  public final bj a;
  public final bj b;
  public bh<apl.b> c = new bh();
  public boolean d = false;
  public bff e = bff.a();
  public bff f = bff.a();
  private bff g = bff.a();
  
  public apl()
  {
    this(avk.a());
  }
  
  private apl(@cgb bj parambj1, @cgb bj parambj2)
  {
    a = ((bj)ck.a(parambj1));
    b = ((bj)ck.a(parambj2));
    parambj1 = new apl.a((byte)0);
    a.a(parambj1);
    b.a(parambj1);
    a.b = false;
    b.b = false;
  }
  
  private apl(@cgb bp parambp)
  {
    this(parambp.a(), parambp.a());
  }
  
  public final apl a(@cgb bff parambff)
  {
    f();
    ck.a(parambff);
    if (d)
    {
      a.b(x);
      b.b(y);
      return this;
    }
    g = parambff;
    return this;
  }
  
  public final apl a(@cgb bl parambl)
  {
    f();
    ck.a(parambl);
    a.a(parambl);
    b.a(parambl);
    return this;
  }
  
  public final apl a(boolean paramBoolean)
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
      g = new bff(a.h, b.h);
      e = new bff(a.d.a, b.d.a);
      f = new bff(a.d.b, b.d.b);
    }
  }
  
  public final apl b(boolean paramBoolean)
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
          ((apl.b)localIterator.next()).a();
        }
      }
    }
    
    public final void a(bj parambj)
    {
      if (d)
      {
        parambj = c.iterator();
        while (parambj.hasNext()) {
          ((apl.b)parambj.next()).a(apl.this);
        }
      }
    }
  }
  
  public static abstract interface b
  {
    public abstract void a();
    
    public abstract void a(@cgb apl paramapl);
  }
}

/* Location:
 * Qualified Name:     apl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */