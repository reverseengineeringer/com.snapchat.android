import java.io.IOException;
import java.net.ProtocolException;
import java.util.List;

final class bow$a
  implements bok
{
  private final cax a;
  private final boolean b;
  private final bos c;
  
  bow$a(cax paramcax, boolean paramBoolean)
  {
    a = paramcax;
    c = new bos(a);
    b = paramBoolean;
  }
  
  private static IOException a(String paramString, Object... paramVarArgs)
  {
    throw new IOException(String.format(paramString, paramVarArgs));
  }
  
  private void a(bok.a parama, int paramInt1, int paramInt2)
  {
    boolean bool = true;
    int i = a.h();
    if (paramInt2 != i * 8 + 4) {
      throw a("TYPE_SETTINGS length: %d != 4 + 8 * %d", new Object[] { Integer.valueOf(paramInt2), Integer.valueOf(i) });
    }
    bov localbov = new bov();
    paramInt2 = 0;
    while (paramInt2 < i)
    {
      int j = a.h();
      localbov.a(j & 0xFFFFFF, (0xFF000000 & j) >>> 24, a.h());
      paramInt2 += 1;
    }
    if ((paramInt1 & 0x1) != 0) {}
    for (;;)
    {
      parama.a(bool, localbov);
      return;
      bool = false;
    }
  }
  
  public final void a() {}
  
  public final boolean a(bok.a parama)
  {
    boolean bool1 = false;
    boolean bool2 = false;
    int j;
    int m;
    int k;
    for (;;)
    {
      try
      {
        j = a.h();
        m = a.h();
        if ((0x80000000 & j) != 0)
        {
          i = 1;
          k = (0xFF000000 & m) >>> 24;
          m = 0xFFFFFF & m;
          if (i == 0) {
            break label711;
          }
          i = (0x7FFF0000 & j) >>> 16;
          if (i == 3) {
            break;
          }
          throw new ProtocolException("version != 3: " + i);
        }
      }
      catch (IOException parama)
      {
        return false;
      }
      i = 0;
    }
    Object localObject;
    switch (j & 0xFFFF)
    {
    case 5: 
    default: 
      a.f(m);
      return true;
    case 1: 
      i = a.h();
      a.h();
      a.g();
      localObject = c.a(m - 10);
      if ((k & 0x1) != 0) {}
      for (bool1 = true;; bool1 = false)
      {
        if ((k & 0x2) != 0) {
          bool2 = true;
        }
        parama.a(bool2, bool1, i & 0x7FFFFFFF, (List)localObject, bon.a);
        return true;
      }
    case 2: 
      i = a.h();
      localObject = c.a(m - 4);
      if ((k & 0x1) != 0) {}
      for (bool1 = true;; bool1 = false)
      {
        parama.a(false, bool1, i & 0x7FFFFFFF, (List)localObject, bon.b);
        return true;
      }
    case 3: 
      if (m != 8) {
        throw a("TYPE_RST_STREAM length: %d != 8", new Object[] { Integer.valueOf(m) });
      }
      i = a.h();
      j = a.h();
      localObject = boj.a(j);
      if (localObject == null) {
        throw a("TYPE_RST_STREAM unexpected error code: %d", new Object[] { Integer.valueOf(j) });
      }
      parama.a(i & 0x7FFFFFFF, (boj)localObject);
      return true;
    case 4: 
      a(parama, k, m);
      return true;
    case 6: 
      if (m != 4) {
        throw a("TYPE_PING length: %d != 4", new Object[] { Integer.valueOf(m) });
      }
      i = a.h();
      bool2 = b;
      if ((i & 0x1) == 1)
      {
        bool1 = true;
        if (bool2 != bool1) {
          break label496;
        }
      }
      for (bool1 = true;; bool1 = false)
      {
        parama.a(bool1, i, 0);
        return true;
        bool1 = false;
        break;
      }
    case 7: 
      if (m != 8) {
        throw a("TYPE_GOAWAY length: %d != 8", new Object[] { Integer.valueOf(m) });
      }
      i = a.h();
      j = a.h();
      if (boj.c(j) == null) {
        throw a("TYPE_GOAWAY unexpected error code: %d", new Object[] { Integer.valueOf(j) });
      }
      parama.a(i & 0x7FFFFFFF, cay.b);
      return true;
    case 8: 
      label496:
      parama.a(false, false, a.h() & 0x7FFFFFFF, c.a(m - 4), bon.c);
      return true;
    }
    if (m != 8) {
      throw a("TYPE_WINDOW_UPDATE length: %d != 8", new Object[] { Integer.valueOf(m) });
    }
    int i = a.h();
    long l = a.h() & 0x7FFFFFFF;
    if (l == 0L) {
      throw a("windowSizeIncrement was 0", new Object[] { Long.valueOf(l) });
    }
    parama.a(i & 0x7FFFFFFF, l);
    return true;
    label711:
    if ((k & 0x1) != 0) {
      bool1 = true;
    }
    parama.a(bool1, j & 0x7FFFFFFF, a, m);
    return true;
  }
  
  public final void close()
  {
    c.b.close();
  }
}

/* Location:
 * Qualified Name:     bow.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */