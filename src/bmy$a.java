import java.util.List;

final class bmy$a
  extends bnc
{
  private final cay a;
  private final bmx b;
  private final List<bmv> c;
  private final List<bnc> d;
  private long e = -1L;
  
  public bmy$a(bmx parambmx, cay paramcay, List<bmv> paramList, List<bnc> paramList1)
  {
    if (parambmx == null) {
      throw new NullPointerException("type == null");
    }
    a = paramcay;
    b = bmx.a(parambmx + "; boundary=" + paramcay.a());
    c = bnq.a(paramList);
    d = bnq.a(paramList1);
  }
  
  private long a(caw paramcaw, boolean paramBoolean)
  {
    long l1 = 0L;
    if (paramBoolean) {
      paramcaw = new cav();
    }
    for (caw localcaw = paramcaw;; localcaw = null)
    {
      int k = c.size();
      int i = 0;
      if (i < k)
      {
        Object localObject = (bmv)c.get(i);
        bnc localbnc = (bnc)d.get(i);
        paramcaw.b(bmy.b());
        paramcaw.b(a);
        paramcaw.b(bmy.c());
        if (localObject != null)
        {
          int j = 0;
          int m = a.length / 2;
          while (j < m)
          {
            paramcaw.b(((bmv)localObject).a(j)).b(bmy.d()).b(((bmv)localObject).b(j)).b(bmy.c());
            j += 1;
          }
        }
        localObject = localbnc.a();
        if (localObject != null) {
          paramcaw.b("Content-Type: ").b(((bmx)localObject).toString()).b(bmy.c());
        }
        l2 = localbnc.b();
        if (l2 != -1L) {
          paramcaw.b("Content-Length: ").j(l2).b(bmy.c());
        }
        while (!paramBoolean)
        {
          paramcaw.b(bmy.c());
          if (!paramBoolean) {
            break label308;
          }
          l1 = l2 + l1;
          paramcaw.b(bmy.c());
          i += 1;
          break;
        }
        localcaw.p();
        l2 = -1L;
      }
      label308:
      do
      {
        return l2;
        ((bnc)d.get(i)).a(paramcaw);
        break;
        paramcaw.b(bmy.b());
        paramcaw.b(a);
        paramcaw.b(bmy.b());
        paramcaw.b(bmy.c());
        l2 = l1;
      } while (!paramBoolean);
      long l2 = b;
      localcaw.p();
      return l1 + l2;
    }
  }
  
  public final bmx a()
  {
    return b;
  }
  
  public final void a(caw paramcaw)
  {
    a(paramcaw, false);
  }
  
  public final long b()
  {
    long l = e;
    if (l != -1L) {
      return l;
    }
    l = a(null, true);
    e = l;
    return l;
  }
}

/* Location:
 * Qualified Name:     bmy.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */