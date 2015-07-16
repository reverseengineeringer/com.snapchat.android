import java.io.Serializable;

public abstract class cil
  extends chg
  implements Serializable
{
  public chi A()
  {
    return ckt.a(chj.q(), y());
  }
  
  public chn B()
  {
    return cku.a(cho.i());
  }
  
  public chi C()
  {
    return ckt.a(chj.r(), B());
  }
  
  public chn D()
  {
    return cku.a(cho.j());
  }
  
  public chi E()
  {
    return ckt.a(chj.s(), D());
  }
  
  public chi F()
  {
    return ckt.a(chj.t(), D());
  }
  
  public chi G()
  {
    return ckt.a(chj.u(), D());
  }
  
  public chn H()
  {
    return cku.a(cho.k());
  }
  
  public chi I()
  {
    return ckt.a(chj.v(), H());
  }
  
  public chn J()
  {
    return cku.a(cho.l());
  }
  
  public chi K()
  {
    return ckt.a(chj.w(), J());
  }
  
  public long a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    long l = E().b(0L, paramInt1);
    l = C().b(l, paramInt2);
    l = u().b(l, paramInt3);
    return e().b(l, paramInt4);
  }
  
  public long a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7)
  {
    long l = E().b(0L, paramInt1);
    l = C().b(l, paramInt2);
    l = u().b(l, paramInt3);
    l = m().b(l, paramInt4);
    l = j().b(l, paramInt5);
    l = g().b(l, paramInt6);
    return d().b(l, paramInt7);
  }
  
  public final long a(cic paramcic, long paramLong)
  {
    int i = 0;
    int j = paramcic.a();
    while (i < j)
    {
      paramLong = paramcic.c(i).a(this).b(paramLong, paramcic.a(i));
      i += 1;
    }
    return paramLong;
  }
  
  public chn c()
  {
    return cku.a(cho.a());
  }
  
  public chi d()
  {
    return ckt.a(chj.a(), c());
  }
  
  public chi e()
  {
    return ckt.a(chj.b(), c());
  }
  
  public chn f()
  {
    return cku.a(cho.b());
  }
  
  public chi g()
  {
    return ckt.a(chj.c(), f());
  }
  
  public chi h()
  {
    return ckt.a(chj.d(), f());
  }
  
  public chn i()
  {
    return cku.a(cho.c());
  }
  
  public chi j()
  {
    return ckt.a(chj.e(), i());
  }
  
  public chi k()
  {
    return ckt.a(chj.f(), i());
  }
  
  public chn l()
  {
    return cku.a(cho.d());
  }
  
  public chi m()
  {
    return ckt.a(chj.g(), l());
  }
  
  public chi n()
  {
    return ckt.a(chj.h(), l());
  }
  
  public chn o()
  {
    return cku.a(cho.e());
  }
  
  public chi p()
  {
    return ckt.a(chj.i(), l());
  }
  
  public chi q()
  {
    return ckt.a(chj.j(), l());
  }
  
  public chi r()
  {
    return ckt.a(chj.k(), o());
  }
  
  public chn s()
  {
    return cku.a(cho.f());
  }
  
  public chi t()
  {
    return ckt.a(chj.l(), s());
  }
  
  public chi u()
  {
    return ckt.a(chj.m(), s());
  }
  
  public chi v()
  {
    return ckt.a(chj.n(), s());
  }
  
  public chn w()
  {
    return cku.a(cho.g());
  }
  
  public chi x()
  {
    return ckt.a(chj.o(), w());
  }
  
  public chn y()
  {
    return cku.a(cho.h());
  }
  
  public chi z()
  {
    return ckt.a(chj.p(), y());
  }
}

/* Location:
 * Qualified Name:     cil
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */