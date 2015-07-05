import java.util.List;

final class blx$a
  extends bmb
{
  private final bzx a;
  private final blw b;
  private final List<blu> c;
  private final List<bmb> d;
  private long e = -1L;
  
  public blx$a(blw paramblw, bzx parambzx, List<blu> paramList, List<bmb> paramList1)
  {
    if (paramblw == null) {
      throw new NullPointerException("type == null");
    }
    a = parambzx;
    b = blw.a(paramblw + "; boundary=" + parambzx.a());
    c = bmp.a(paramList);
    d = bmp.a(paramList1);
  }
  
  private long a(bzv parambzv, boolean paramBoolean)
  {
    long l1 = 0L;
    if (paramBoolean) {
      parambzv = new bzu();
    }
    for (bzv localbzv = parambzv;; localbzv = null)
    {
      int k = c.size();
      int i = 0;
      if (i < k)
      {
        Object localObject = (blu)c.get(i);
        bmb localbmb = (bmb)d.get(i);
        parambzv.b(blx.b());
        parambzv.b(a);
        parambzv.b(blx.c());
        if (localObject != null)
        {
          int j = 0;
          int m = a.length / 2;
          while (j < m)
          {
            parambzv.b(((blu)localObject).a(j)).b(blx.d()).b(((blu)localObject).b(j)).b(blx.c());
            j += 1;
          }
        }
        localObject = localbmb.a();
        if (localObject != null) {
          parambzv.b("Content-Type: ").b(((blw)localObject).toString()).b(blx.c());
        }
        l2 = localbmb.b();
        if (l2 != -1L) {
          parambzv.b("Content-Length: ").j(l2).b(blx.c());
        }
        while (!paramBoolean)
        {
          parambzv.b(blx.c());
          if (!paramBoolean) {
            break label308;
          }
          l1 = l2 + l1;
          parambzv.b(blx.c());
          i += 1;
          break;
        }
        localbzv.p();
        l2 = -1L;
      }
      label308:
      do
      {
        return l2;
        ((bmb)d.get(i)).a(parambzv);
        break;
        parambzv.b(blx.b());
        parambzv.b(a);
        parambzv.b(blx.b());
        parambzv.b(blx.c());
        l2 = l1;
      } while (!paramBoolean);
      long l2 = b;
      localbzv.p();
      return l1 + l2;
    }
  }
  
  public final blw a()
  {
    return b;
  }
  
  public final void a(bzv parambzv)
  {
    a(parambzv, false);
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
 * Qualified Name:     blx.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */