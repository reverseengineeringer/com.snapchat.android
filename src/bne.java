import java.net.ProtocolException;
import java.net.URL;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.TimeUnit;

public final class bne
  implements bng
{
  private static final List<bzx> a = bmp.a(new bzx[] { bzx.a("connection"), bzx.a("host"), bzx.a("keep-alive"), bzx.a("proxy-connection"), bzx.a("transfer-encoding") });
  private static final List<bzx> b = bmp.a(new bzx[] { bzx.a("connection"), bzx.a("host"), bzx.a("keep-alive"), bzx.a("proxy-connection"), bzx.a("te"), bzx.a("transfer-encoding"), bzx.a("encoding"), bzx.a("upgrade") });
  private final bmw c;
  private final bnw d;
  private bnx e;
  
  public bne(bmw parambmw, bnw parambnw)
  {
    c = parambmw;
    d = parambnw;
  }
  
  private static boolean a(blz paramblz, bzx parambzx)
  {
    if (paramblz == blz.c) {
      return a.contains(parambzx);
    }
    if (paramblz == blz.d) {
      return b.contains(parambzx);
    }
    throw new AssertionError(paramblz);
  }
  
  public final bmd a(bmc parambmc)
  {
    return new bna(f, cad.a(e.f));
  }
  
  public final cai a(bma parambma, long paramLong)
  {
    return e.d();
  }
  
  public final void a()
  {
    e.d().close();
  }
  
  public final void a(bma parambma)
  {
    if (e != null) {
      return;
    }
    c.b();
    boolean bool = c.c();
    Object localObject = bnb.a(c.c.g);
    bnw localbnw = d;
    blz localblz = d.a;
    blu localblu = c;
    ArrayList localArrayList = new ArrayList(a.length / 2 + 10);
    localArrayList.add(new bnl(bnl.b, b));
    localArrayList.add(new bnl(bnl.c, bnb.a(parambma.a())));
    String str = bmw.a(parambma.a());
    int i;
    if (blz.c == localblz)
    {
      localArrayList.add(new bnl(bnl.g, (String)localObject));
      localArrayList.add(new bnl(bnl.f, str));
      localArrayList.add(new bnl(bnl.d, parambma.a().getProtocol()));
      parambma = new LinkedHashSet();
      int k = a.length / 2;
      i = 0;
      label229:
      if (i >= k) {
        break label511;
      }
      localObject = bzx.a(localblu.a(i).toLowerCase(Locale.US));
      str = localblu.b(i);
      if ((!a(localblz, (bzx)localObject)) && (!((bzx)localObject).equals(bnl.b)) && (!((bzx)localObject).equals(bnl.c)) && (!((bzx)localObject).equals(bnl.d)) && (!((bzx)localObject).equals(bnl.e)) && (!((bzx)localObject).equals(bnl.f)) && (!((bzx)localObject).equals(bnl.g)))
      {
        if (!parambma.add(localObject)) {
          break label412;
        }
        localArrayList.add(new bnl((bzx)localObject, str));
      }
    }
    label412:
    label509:
    for (;;)
    {
      i += 1;
      break label229;
      if (blz.d == localblz)
      {
        localArrayList.add(new bnl(bnl.e, str));
        break;
      }
      throw new AssertionError();
      int j = 0;
      for (;;)
      {
        if (j >= localArrayList.size()) {
          break label509;
        }
        if (geth.equals(localObject))
        {
          localArrayList.set(j, new bnl((bzx)localObject, geti.a() + '\000' + str));
          break;
        }
        j += 1;
      }
    }
    label511:
    e = localbnw.a(localArrayList, bool);
    e.h.a(c.b.x, TimeUnit.MILLISECONDS);
  }
  
  public final void a(bnc parambnc)
  {
    parambnc.a(e.d());
  }
  
  public final bmc.a b()
  {
    List localList = e.c();
    blz localblz = d.a;
    Object localObject1 = null;
    Object localObject2 = "HTTP/1.1";
    blu.a locala = new blu.a();
    locala.b(bmz.d, localblz.toString());
    int n = localList.size();
    int i = 0;
    while (i < n)
    {
      bzx localbzx = geth;
      String str2 = geti.a();
      int j = 0;
      if (j < str2.length())
      {
        int m = str2.indexOf(0, j);
        int k = m;
        if (m == -1) {
          k = str2.length();
        }
        String str1 = str2.substring(j, k);
        if (localbzx.equals(bnl.a)) {
          localObject1 = str1;
        }
        for (;;)
        {
          j = k + 1;
          break;
          if (localbzx.equals(bnl.g)) {
            localObject2 = str1;
          } else if (!a(localblz, localbzx)) {
            locala.a(localbzx.a(), str1);
          }
        }
      }
      i += 1;
    }
    if (localObject1 == null) {
      throw new ProtocolException("Expected ':status' header not present");
    }
    localObject1 = bnf.a((String)localObject2 + " " + (String)localObject1);
    localObject2 = new bmc.a();
    b = localblz;
    c = b;
    d = c;
    return ((bmc.a)localObject2).a(locala.a());
  }
  
  public final void c() {}
  
  public final boolean d()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     bne
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */