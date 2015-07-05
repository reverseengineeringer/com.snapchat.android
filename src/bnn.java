import java.io.ByteArrayOutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

final class bnn
{
  private static final bnl[] a;
  private static final Map<bzx, Integer> b;
  
  static
  {
    int i = 0;
    a = new bnl[] { new bnl(bnl.e, ""), new bnl(bnl.b, "GET"), new bnl(bnl.b, "POST"), new bnl(bnl.c, "/"), new bnl(bnl.c, "/index.html"), new bnl(bnl.d, "http"), new bnl(bnl.d, "https"), new bnl(bnl.a, "200"), new bnl(bnl.a, "204"), new bnl(bnl.a, "206"), new bnl(bnl.a, "304"), new bnl(bnl.a, "400"), new bnl(bnl.a, "404"), new bnl(bnl.a, "500"), new bnl("accept-charset", ""), new bnl("accept-encoding", "gzip, deflate"), new bnl("accept-language", ""), new bnl("accept-ranges", ""), new bnl("accept", ""), new bnl("access-control-allow-origin", ""), new bnl("age", ""), new bnl("allow", ""), new bnl("authorization", ""), new bnl("cache-control", ""), new bnl("content-disposition", ""), new bnl("content-encoding", ""), new bnl("content-language", ""), new bnl("content-length", ""), new bnl("content-location", ""), new bnl("content-range", ""), new bnl("content-type", ""), new bnl("cookie", ""), new bnl("date", ""), new bnl("etag", ""), new bnl("expect", ""), new bnl("expires", ""), new bnl("from", ""), new bnl("host", ""), new bnl("if-match", ""), new bnl("if-modified-since", ""), new bnl("if-none-match", ""), new bnl("if-range", ""), new bnl("if-unmodified-since", ""), new bnl("last-modified", ""), new bnl("link", ""), new bnl("location", ""), new bnl("max-forwards", ""), new bnl("proxy-authenticate", ""), new bnl("proxy-authorization", ""), new bnl("range", ""), new bnl("referer", ""), new bnl("refresh", ""), new bnl("retry-after", ""), new bnl("server", ""), new bnl("set-cookie", ""), new bnl("strict-transport-security", ""), new bnl("transfer-encoding", ""), new bnl("user-agent", ""), new bnl("vary", ""), new bnl("via", ""), new bnl("www-authenticate", "") };
    LinkedHashMap localLinkedHashMap = new LinkedHashMap(a.length);
    while (i < a.length)
    {
      if (!localLinkedHashMap.containsKey(ah)) {
        localLinkedHashMap.put(ah, Integer.valueOf(i));
      }
      i += 1;
    }
    b = Collections.unmodifiableMap(localLinkedHashMap);
  }
  
  static final class a
  {
    final List<bnl> a = new ArrayList();
    final bzw b;
    int c = 4096;
    int d = 4096;
    bnl[] e = new bnl[8];
    int f = e.length - 1;
    int g = 0;
    int h = 0;
    
    a(caj paramcaj)
    {
      b = cad.a(paramcaj);
    }
    
    private void c()
    {
      a.clear();
      Arrays.fill(e, null);
      f = (e.length - 1);
      g = 0;
      h = 0;
    }
    
    static boolean c(int paramInt)
    {
      return (paramInt >= 0) && (paramInt <= bnn.a().length - 1);
    }
    
    private int d()
    {
      return b.f() & 0xFF;
    }
    
    private int d(int paramInt)
    {
      int i = 0;
      int k = 0;
      if (paramInt > 0)
      {
        i = e.length - 1;
        int j = paramInt;
        paramInt = k;
        while ((i >= f) && (j > 0))
        {
          j -= e[i].j;
          h -= e[i].j;
          g -= 1;
          paramInt += 1;
          i -= 1;
        }
        System.arraycopy(e, f + 1, e, f + 1 + paramInt, g);
        f += paramInt;
        i = paramInt;
      }
      return i;
    }
    
    final int a(int paramInt)
    {
      return f + 1 + paramInt;
    }
    
    final int a(int paramInt1, int paramInt2)
    {
      paramInt1 &= paramInt2;
      if (paramInt1 < paramInt2) {
        return paramInt1;
      }
      paramInt1 = 0;
      int i;
      for (;;)
      {
        i = d();
        if ((i & 0x80) == 0) {
          break;
        }
        paramInt2 += ((i & 0x7F) << paramInt1);
        paramInt1 += 7;
      }
      return (i << paramInt1) + paramInt2;
    }
    
    final void a()
    {
      if (d < h)
      {
        if (d == 0) {
          c();
        }
      }
      else {
        return;
      }
      d(h - d);
    }
    
    final void a(bnl parambnl)
    {
      a.add(parambnl);
      int i = j;
      if (i > d)
      {
        c();
        return;
      }
      d(h + i - d);
      if (g + 1 > e.length)
      {
        bnl[] arrayOfbnl = new bnl[e.length * 2];
        System.arraycopy(e, 0, arrayOfbnl, e.length, e.length);
        f = (e.length - 1);
        e = arrayOfbnl;
      }
      int j = f;
      f = (j - 1);
      e[j] = parambnl;
      g += 1;
      h = (i + h);
    }
    
    final bzx b()
    {
      int j = 0;
      int k = d();
      int i;
      bnp localbnp;
      byte[] arrayOfByte;
      ByteArrayOutputStream localByteArrayOutputStream;
      bnp.a locala1;
      if ((k & 0x80) == 128)
      {
        i = 1;
        k = a(k, 127);
        if (i != 0)
        {
          localbnp = bnp.a();
          arrayOfByte = b.e(k);
          localByteArrayOutputStream = new ByteArrayOutputStream();
          locala1 = a;
          k = 0;
          i = 0;
        }
      }
      else
      {
        int m;
        bnp.a locala2;
        for (;;)
        {
          m = i;
          locala2 = locala1;
          if (j >= arrayOfByte.length) {
            break label183;
          }
          k = k << 8 | arrayOfByte[j] & 0xFF;
          i += 8;
          for (;;)
          {
            if (i < 8) {
              break label176;
            }
            locala1 = a[(k >>> i - 8 & 0xFF)];
            if (a == null)
            {
              localByteArrayOutputStream.write(b);
              i -= c;
              locala1 = a;
              continue;
              i = 0;
              break;
            }
            i -= 8;
          }
          label176:
          j += 1;
        }
        label183:
        while (m > 0)
        {
          locala1 = a[(k << 8 - m & 0xFF)];
          if ((a != null) || (c > m)) {
            break;
          }
          localByteArrayOutputStream.write(b);
          m -= c;
          locala2 = a;
        }
        return bzx.a(localByteArrayOutputStream.toByteArray());
      }
      return b.c(k);
    }
    
    final bzx b(int paramInt)
    {
      if (c(paramInt)) {
        return ah;
      }
      return e[a(paramInt - bnn.a().length)].h;
    }
  }
  
  static final class b
  {
    private final bzu a;
    
    b(bzu parambzu)
    {
      a = parambzu;
    }
    
    private void a(int paramInt1, int paramInt2)
    {
      if (paramInt1 < paramInt2)
      {
        a.a(paramInt1 | 0x0);
        return;
      }
      a.a(paramInt2 | 0x0);
      paramInt1 -= paramInt2;
      while (paramInt1 >= 128)
      {
        a.a(paramInt1 & 0x7F | 0x80);
        paramInt1 >>>= 7;
      }
      a.a(paramInt1);
    }
    
    private void a(bzx parambzx)
    {
      a(c.length, 127);
      a.a(parambzx);
    }
    
    final void a(List<bnl> paramList)
    {
      int j = paramList.size();
      int i = 0;
      if (i < j)
      {
        bzx localbzx = geth.c();
        Integer localInteger = (Integer)bnn.b().get(localbzx);
        if (localInteger != null)
        {
          a(localInteger.intValue() + 1, 15);
          a(geti);
        }
        for (;;)
        {
          i += 1;
          break;
          a.a(0);
          a(localbzx);
          a(geti);
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     bnn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */