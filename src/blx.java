import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

public final class blx
{
  public static final blw a = blw.a("multipart/mixed");
  public static final blw b = blw.a("multipart/alternative");
  public static final blw c = blw.a("multipart/digest");
  public static final blw d = blw.a("multipart/parallel");
  public static final blw e = blw.a("multipart/form-data");
  private static final byte[] f = { 58, 32 };
  private static final byte[] g = { 13, 10 };
  private static final byte[] h = { 45, 45 };
  private final bzx i;
  private blw j = a;
  private final List<blu> k = new ArrayList();
  private final List<bmb> l = new ArrayList();
  
  public blx()
  {
    this(UUID.randomUUID().toString());
  }
  
  private blx(String paramString)
  {
    i = bzx.a(paramString);
  }
  
  public final blx a(blu paramblu, bmb parambmb)
  {
    if (parambmb == null) {
      throw new NullPointerException("body == null");
    }
    if ((paramblu != null) && (paramblu.a("Content-Type") != null)) {
      throw new IllegalArgumentException("Unexpected header: Content-Type");
    }
    if ((paramblu != null) && (paramblu.a("Content-Length") != null)) {
      throw new IllegalArgumentException("Unexpected header: Content-Length");
    }
    k.add(paramblu);
    l.add(parambmb);
    return this;
  }
  
  public final blx a(blw paramblw)
  {
    if (paramblw == null) {
      throw new NullPointerException("type == null");
    }
    if (!a.equals("multipart")) {
      throw new IllegalArgumentException("multipart != " + paramblw);
    }
    j = paramblw;
    return this;
  }
  
  public final bmb a()
  {
    if (k.isEmpty()) {
      throw new IllegalStateException("Multipart body must have at least one part.");
    }
    return new blx.a(j, i, k, l);
  }
  
  static final class a
    extends bmb
  {
    private final bzx a;
    private final blw b;
    private final List<blu> c;
    private final List<bmb> d;
    private long e = -1L;
    
    public a(blw paramblw, bzx parambzx, List<blu> paramList, List<bmb> paramList1)
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
}

/* Location:
 * Qualified Name:     blx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */