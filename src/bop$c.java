import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

final class bop$c
  implements bok
{
  final boo.a a;
  private final cax b;
  private final bop.a c;
  private final boolean d;
  
  bop$c(cax paramcax, boolean paramBoolean)
  {
    b = paramcax;
    d = paramBoolean;
    c = new bop.a(b);
    a = new boo.a(c);
  }
  
  private List<bom> a(int paramInt1, short paramShort, byte paramByte, int paramInt2)
  {
    Object localObject1 = c;
    c.d = paramInt1;
    a = paramInt1;
    c.e = paramShort;
    c.b = paramByte;
    c.c = paramInt2;
    localObject1 = a;
    while (!b.d())
    {
      paramInt1 = b.f() & 0xFF;
      if (paramInt1 == 128) {
        throw new IOException("index == 0");
      }
      if ((paramInt1 & 0x80) == 128)
      {
        paramInt1 = ((boo.a)localObject1).a(paramInt1, 127) - 1;
        if (boo.a.c(paramInt1))
        {
          localObject2 = boo.a()[paramInt1];
          a.add(localObject2);
        }
        else
        {
          paramInt2 = ((boo.a)localObject1).a(paramInt1 - boo.a().length);
          if ((paramInt2 < 0) || (paramInt2 > e.length - 1)) {
            throw new IOException("Header index too large " + (paramInt1 + 1));
          }
          a.add(e[paramInt2]);
        }
      }
      else if (paramInt1 == 64)
      {
        ((boo.a)localObject1).a(new bom(boo.a(((boo.a)localObject1).b()), ((boo.a)localObject1).b()));
      }
      else if ((paramInt1 & 0x40) == 64)
      {
        ((boo.a)localObject1).a(new bom(((boo.a)localObject1).b(((boo.a)localObject1).a(paramInt1, 63) - 1), ((boo.a)localObject1).b()));
      }
      else if ((paramInt1 & 0x20) == 32)
      {
        d = ((boo.a)localObject1).a(paramInt1, 31);
        if ((d < 0) || (d > c)) {
          throw new IOException("Invalid dynamic table size update " + d);
        }
        ((boo.a)localObject1).a();
      }
      else
      {
        cay localcay;
        if ((paramInt1 == 16) || (paramInt1 == 0))
        {
          localObject2 = boo.a(((boo.a)localObject1).b());
          localcay = ((boo.a)localObject1).b();
          a.add(new bom((cay)localObject2, localcay));
        }
        else
        {
          localObject2 = ((boo.a)localObject1).b(((boo.a)localObject1).a(paramInt1, 15) - 1);
          localcay = ((boo.a)localObject1).b();
          a.add(new bom((cay)localObject2, localcay));
        }
      }
    }
    localObject1 = a;
    Object localObject2 = new ArrayList(a);
    a.clear();
    return (List<bom>)localObject2;
  }
  
  private void b()
  {
    b.h();
    b.f();
  }
  
  public final void a()
  {
    if (d) {}
    cay localcay;
    do
    {
      return;
      localcay = b.c(ac.length);
      if (bop.b().isLoggable(Level.FINE)) {
        bop.b().fine(String.format("<< CONNECTION %s", new Object[] { localcay.b() }));
      }
    } while (bop.a().equals(localcay));
    throw bop.a("Expected a connection header but was %s", new Object[] { localcay.a() });
  }
  
  public final boolean a(bok.a parama)
  {
    boolean bool1 = true;
    int j = 0;
    boolean bool2 = false;
    int i = 0;
    int n;
    byte b2;
    label250:
    label256:
    label426:
    label608:
    label833:
    do
    {
      do
      {
        try
        {
          b.a(9L);
          n = bop.a(b);
          if ((n < 0) || (n > 16384)) {
            throw bop.a("FRAME_SIZE_ERROR: %s", new Object[] { Integer.valueOf(n) });
          }
        }
        catch (IOException parama)
        {
          bool1 = false;
          return bool1;
        }
        byte b1 = (byte)(b.f() & 0xFF);
        b2 = (byte)(b.f() & 0xFF);
        m = b.h() & 0x7FFFFFFF;
        if (bop.b().isLoggable(Level.FINE)) {
          bop.b().fine(bop.b.a(true, m, n, b1, b2));
        }
        switch (b1)
        {
        default: 
          b.f(n);
          return true;
        case 0: 
          if ((b2 & 0x1) != 0)
          {
            bool1 = true;
            if ((b2 & 0x20) == 0) {
              break label250;
            }
          }
          for (k = 1;; k = 0)
          {
            if (k == 0) {
              break label256;
            }
            throw bop.a("PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA", new Object[0]);
            bool1 = false;
            break;
          }
          if ((b2 & 0x8) != 0) {
            i = (short)(b.f() & 0xFF);
          }
          k = bop.a(n, b2, i);
          parama.a(bool1, m, b, k);
          b.f(i);
          return true;
        case 1: 
          if (m == 0) {
            throw bop.a("PROTOCOL_ERROR: TYPE_HEADERS streamId == 0", new Object[0]);
          }
          if ((b2 & 0x1) != 0)
          {
            bool1 = true;
            if ((b2 & 0x8) == 0) {
              break label426;
            }
          }
          for (i = (short)(b.f() & 0xFF);; i = 0)
          {
            k = n;
            if ((b2 & 0x20) != 0)
            {
              b();
              k = n - 5;
            }
            parama.a(false, bool1, m, a(bop.a(k, b2, i), i, b2, m), bon.d);
            return true;
            bool1 = false;
            break;
          }
        case 2: 
          if (n != 5) {
            throw bop.a("TYPE_PRIORITY length: %d != 5", new Object[] { Integer.valueOf(n) });
          }
          if (m == 0) {
            throw bop.a("TYPE_PRIORITY streamId == 0", new Object[0]);
          }
          b();
          return true;
        case 3: 
          if (n != 4) {
            throw bop.a("TYPE_RST_STREAM length: %d != 4", new Object[] { Integer.valueOf(n) });
          }
          if (m == 0) {
            throw bop.a("TYPE_RST_STREAM streamId == 0", new Object[0]);
          }
          k = b.h();
          localObject = boj.b(k);
          if (localObject == null) {
            throw bop.a("TYPE_RST_STREAM unexpected error code: %d", new Object[] { Integer.valueOf(k) });
          }
          parama.a(m, (boj)localObject);
          return true;
        case 4: 
          if (m != 0) {
            throw bop.a("TYPE_SETTINGS streamId != 0", new Object[0]);
          }
          if ((b2 & 0x1) == 0) {
            break label608;
          }
        }
      } while (n == 0);
      throw bop.a("FRAME_SIZE_ERROR ack frame should be empty!", new Object[0]);
      if (n % 6 != 0) {
        throw bop.a("TYPE_SETTINGS length %% 6 != 0: %s", new Object[] { Integer.valueOf(n) });
      }
      localObject = new bov();
      k = 0;
      if (k < n)
      {
        i = b.g();
        int i1 = b.h();
        m = i;
        switch (i)
        {
        default: 
          throw bop.a("PROTOCOL_ERROR invalid settings id: %s", new Object[] { Short.valueOf(i) });
        case 2: 
          m = i;
          if (i1 != 0)
          {
            m = i;
            if (i1 != 1) {
              throw bop.a("PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1", new Object[0]);
            }
          }
          break;
        case 3: 
          m = 4;
        }
        do
        {
          do
          {
            ((bov)localObject).a(m, 0, i1);
            k += 6;
            break;
            m = 7;
          } while (i1 >= 0);
          throw bop.a("PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1", new Object[0]);
          if (i1 < 16384) {
            break label833;
          }
          m = i;
        } while (i1 <= 16777215);
        throw bop.a("PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s", new Object[] { Integer.valueOf(i1) });
      }
      parama.a(false, (bov)localObject);
    } while (((bov)localObject).a() < 0);
    parama = a;
    int k = ((bov)localObject).a();
    c = k;
    d = k;
    parama.a();
    return true;
    if (m == 0) {
      throw bop.a("PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0", new Object[0]);
    }
    i = j;
    if ((b2 & 0x8) != 0) {
      i = (short)(b.f() & 0xFF);
    }
    parama.a(b.h() & 0x7FFFFFFF, a(bop.a(n - 4, b2, i), i, b2, m));
    return true;
    if (n != 8) {
      throw bop.a("TYPE_PING length != 8: %s", new Object[] { Integer.valueOf(n) });
    }
    if (m != 0) {
      throw bop.a("TYPE_PING streamId != 0", new Object[0]);
    }
    k = b.h();
    int m = b.h();
    bool1 = bool2;
    if ((b2 & 0x1) != 0) {
      bool1 = true;
    }
    parama.a(bool1, k, m);
    return true;
    if (n < 8) {
      throw bop.a("TYPE_GOAWAY length < 8: %s", new Object[] { Integer.valueOf(n) });
    }
    if (m != 0) {
      throw bop.a("TYPE_GOAWAY streamId != 0", new Object[0]);
    }
    k = b.h();
    m = b.h();
    n -= 8;
    if (boj.b(m) == null) {
      throw bop.a("TYPE_GOAWAY unexpected error code: %d", new Object[] { Integer.valueOf(m) });
    }
    Object localObject = cay.b;
    if (n > 0) {
      localObject = b.c(n);
    }
    parama.a(k, (cay)localObject);
    return true;
    if (n != 4) {
      throw bop.a("TYPE_WINDOW_UPDATE length !=4: %s", new Object[] { Integer.valueOf(n) });
    }
    long l = b.h() & 0x7FFFFFFF;
    if (l == 0L) {
      throw bop.a("windowSizeIncrement was 0", new Object[] { Long.valueOf(l) });
    }
    parama.a(m, l);
    return true;
  }
  
  public final void close()
  {
    b.close();
  }
}

/* Location:
 * Qualified Name:     bop.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */