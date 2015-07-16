import java.net.ProtocolException;
import java.net.URL;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.TimeUnit;

public final class bof
  implements boh
{
  private static final List<cay> a = bnq.a(new cay[] { cay.a("connection"), cay.a("host"), cay.a("keep-alive"), cay.a("proxy-connection"), cay.a("transfer-encoding") });
  private static final List<cay> b = bnq.a(new cay[] { cay.a("connection"), cay.a("host"), cay.a("keep-alive"), cay.a("proxy-connection"), cay.a("te"), cay.a("transfer-encoding"), cay.a("encoding"), cay.a("upgrade") });
  private final bnx c;
  private final box d;
  private boy e;
  
  public bof(bnx parambnx, box parambox)
  {
    c = parambnx;
    d = parambox;
  }
  
  private static boolean a(bna parambna, cay paramcay)
  {
    if (parambna == bna.c) {
      return a.contains(paramcay);
    }
    if (parambna == bna.d) {
      return b.contains(paramcay);
    }
    throw new AssertionError(parambna);
  }
  
  public final bne a(bnd parambnd)
  {
    return new bob(f, cbe.a(e.f));
  }
  
  public final cbj a(bnb parambnb, long paramLong)
  {
    return e.d();
  }
  
  public final void a()
  {
    e.d().close();
  }
  
  public final void a(bnb parambnb)
  {
    if (e != null) {
      return;
    }
    c.b();
    boolean bool = c.c();
    Object localObject = boc.a(c.c.g);
    box localbox = d;
    bna localbna = d.a;
    bmv localbmv = c;
    ArrayList localArrayList = new ArrayList(a.length / 2 + 10);
    localArrayList.add(new bom(bom.b, b));
    localArrayList.add(new bom(bom.c, boc.a(parambnb.a())));
    String str = bnx.a(parambnb.a());
    int i;
    if (bna.c == localbna)
    {
      localArrayList.add(new bom(bom.g, (String)localObject));
      localArrayList.add(new bom(bom.f, str));
      localArrayList.add(new bom(bom.d, parambnb.a().getProtocol()));
      parambnb = new LinkedHashSet();
      int k = a.length / 2;
      i = 0;
      label229:
      if (i >= k) {
        break label511;
      }
      localObject = cay.a(localbmv.a(i).toLowerCase(Locale.US));
      str = localbmv.b(i);
      if ((!a(localbna, (cay)localObject)) && (!((cay)localObject).equals(bom.b)) && (!((cay)localObject).equals(bom.c)) && (!((cay)localObject).equals(bom.d)) && (!((cay)localObject).equals(bom.e)) && (!((cay)localObject).equals(bom.f)) && (!((cay)localObject).equals(bom.g)))
      {
        if (!parambnb.add(localObject)) {
          break label412;
        }
        localArrayList.add(new bom((cay)localObject, str));
      }
    }
    label412:
    label509:
    for (;;)
    {
      i += 1;
      break label229;
      if (bna.d == localbna)
      {
        localArrayList.add(new bom(bom.e, str));
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
          localArrayList.set(j, new bom((cay)localObject, geti.a() + '\000' + str));
          break;
        }
        j += 1;
      }
    }
    label511:
    e = localbox.a(localArrayList, bool);
    e.h.a(c.b.x, TimeUnit.MILLISECONDS);
  }
  
  public final void a(bod parambod)
  {
    parambod.a(e.d());
  }
  
  public final bnd.a b()
  {
    List localList = e.c();
    bna localbna = d.a;
    Object localObject1 = null;
    Object localObject2 = "HTTP/1.1";
    bmv.a locala = new bmv.a();
    locala.b(boa.d, localbna.toString());
    int n = localList.size();
    int i = 0;
    while (i < n)
    {
      cay localcay = geth;
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
        if (localcay.equals(bom.a)) {
          localObject1 = str1;
        }
        for (;;)
        {
          j = k + 1;
          break;
          if (localcay.equals(bom.g)) {
            localObject2 = str1;
          } else if (!a(localbna, localcay)) {
            locala.a(localcay.a(), str1);
          }
        }
      }
      i += 1;
    }
    if (localObject1 == null) {
      throw new ProtocolException("Expected ':status' header not present");
    }
    localObject1 = bog.a((String)localObject2 + " " + (String)localObject1);
    localObject2 = new bnd.a();
    b = localbna;
    c = b;
    d = c;
    return ((bnd.a)localObject2).a(locala.a());
  }
  
  public final void c() {}
  
  public final boolean d()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     bof
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */