import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public final class bop
  implements boz
{
  private static final Logger a = Logger.getLogger(bop.b.class.getName());
  private static final cay b = cay.a("PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n");
  
  private static IOException c(String paramString, Object... paramVarArgs)
  {
    throw new IOException(String.format(paramString, paramVarArgs));
  }
  
  public final bok a(cax paramcax, boolean paramBoolean)
  {
    return new bop.c(paramcax, paramBoolean);
  }
  
  public final bol a(caw paramcaw, boolean paramBoolean)
  {
    return new bop.d(paramcaw, paramBoolean);
  }
  
  static final class a
    implements cbk
  {
    int a;
    byte b;
    int c;
    int d;
    short e;
    private final cax f;
    
    public a(cax paramcax)
    {
      f = paramcax;
    }
    
    public final cbl E_()
    {
      return f.E_();
    }
    
    public final long a(cav paramcav, long paramLong)
    {
      if (d == 0)
      {
        f.f(e);
        e = 0;
        if ((b & 0x4) == 0) {}
      }
      do
      {
        return -1L;
        int i = c;
        int j = bop.a(f);
        d = j;
        a = j;
        byte b1 = (byte)(f.f() & 0xFF);
        b = ((byte)(f.f() & 0xFF));
        if (bop.b().isLoggable(Level.FINE)) {
          bop.b().fine(bop.b.a(true, c, a, b1, b));
        }
        c = (f.h() & 0x7FFFFFFF);
        if (b1 != 9) {
          throw bop.a("%s != TYPE_CONTINUATION", new Object[] { Byte.valueOf(b1) });
        }
        if (c == i) {
          break;
        }
        throw bop.a("TYPE_CONTINUATION streamId changed", new Object[0]);
        paramLong = f.a(paramcav, Math.min(paramLong, d));
      } while (paramLong == -1L);
      d = ((int)(d - paramLong));
      return paramLong;
    }
    
    public final void close() {}
  }
  
  static final class b
  {
    private static final String[] a;
    private static final String[] b;
    private static final String[] c;
    
    static
    {
      int k = 0;
      a = new String[] { "DATA", "HEADERS", "PRIORITY", "RST_STREAM", "SETTINGS", "PUSH_PROMISE", "PING", "GOAWAY", "WINDOW_UPDATE", "CONTINUATION" };
      b = new String[64];
      c = new String['Ā'];
      int i = 0;
      while (i < c.length)
      {
        c[i] = String.format("%8s", new Object[] { Integer.toBinaryString(i) }).replace(' ', '0');
        i += 1;
      }
      b[0] = "";
      b[1] = "END_STREAM";
      int[] arrayOfInt = new int[1];
      arrayOfInt[0] = 1;
      b[8] = "PADDED";
      i = 0;
      int j;
      while (i <= 0)
      {
        j = arrayOfInt[i];
        b[(j | 0x8)] = (b[j] + "|PADDED");
        i += 1;
      }
      b[4] = "END_HEADERS";
      b[32] = "PRIORITY";
      b[36] = "END_HEADERS|PRIORITY";
      i = 0;
      for (;;)
      {
        j = k;
        if (i >= 3) {
          break;
        }
        int m = new int[] { 4, 32, 36 }[i];
        j = 0;
        while (j <= 0)
        {
          int n = arrayOfInt[j];
          b[(n | m)] = (b[n] + '|' + b[m]);
          b[(n | m | 0x8)] = (b[n] + '|' + b[m] + "|PADDED");
          j += 1;
        }
        i += 1;
      }
      while (j < b.length)
      {
        if (b[j] == null) {
          b[j] = c[j];
        }
        j += 1;
      }
    }
    
    static String a(boolean paramBoolean, int paramInt1, int paramInt2, byte paramByte1, byte paramByte2)
    {
      String str2;
      Object localObject;
      if (paramByte1 < a.length)
      {
        str2 = a[paramByte1];
        if (paramByte2 != 0) {
          break label92;
        }
        localObject = "";
        label24:
        if (!paramBoolean) {
          break label259;
        }
      }
      label92:
      label225:
      label259:
      for (String str1 = "<<";; str1 = ">>")
      {
        return String.format("%s 0x%08x %5d %-13s %s", new Object[] { str1, Integer.valueOf(paramInt1), Integer.valueOf(paramInt2), str2, localObject });
        str2 = String.format("0x%02x", new Object[] { Byte.valueOf(paramByte1) });
        break;
        switch (paramByte1)
        {
        case 5: 
        default: 
          if (paramByte2 >= b.length) {
            break;
          }
        }
        for (str1 = b[paramByte2];; str1 = c[paramByte2])
        {
          if ((paramByte1 != 5) || ((paramByte2 & 0x4) == 0)) {
            break label225;
          }
          localObject = str1.replace("HEADERS", "PUSH_PROMISE");
          break;
          if (paramByte2 == 1)
          {
            localObject = "ACK";
            break;
          }
          localObject = c[paramByte2];
          break;
          localObject = c[paramByte2];
          break;
        }
        localObject = str1;
        if (paramByte1 != 0) {
          break label24;
        }
        localObject = str1;
        if ((paramByte2 & 0x20) == 0) {
          break label24;
        }
        localObject = str1.replace("PRIORITY", "COMPRESSED");
        break label24;
      }
    }
  }
  
  static final class c
    implements bok
  {
    final boo.a a;
    private final cax b;
    private final bop.a c;
    private final boolean d;
    
    c(cax paramcax, boolean paramBoolean)
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
  
  static final class d
    implements bol
  {
    private final caw a;
    private final boolean b;
    private final cav c;
    private final boo.b d;
    private int e;
    private boolean f;
    
    d(caw paramcaw, boolean paramBoolean)
    {
      a = paramcaw;
      b = paramBoolean;
      c = new cav();
      d = new boo.b(c);
      e = 16384;
    }
    
    private void a(int paramInt1, int paramInt2, byte paramByte1, byte paramByte2)
    {
      if (bop.b().isLoggable(Level.FINE)) {
        bop.b().fine(bop.b.a(false, paramInt1, paramInt2, paramByte1, paramByte2));
      }
      if (paramInt2 > e) {
        throw bop.b("FRAME_SIZE_ERROR length > %d: %d", new Object[] { Integer.valueOf(e), Integer.valueOf(paramInt2) });
      }
      if ((0x80000000 & paramInt1) != 0) {
        throw bop.b("reserved bit set: %s", new Object[] { Integer.valueOf(paramInt1) });
      }
      bop.a(a, paramInt2);
      a.g(paramByte1 & 0xFF);
      a.g(paramByte2 & 0xFF);
      a.e(0x7FFFFFFF & paramInt1);
    }
    
    private void b(int paramInt, long paramLong)
    {
      if (paramLong > 0L)
      {
        int i = (int)Math.min(e, paramLong);
        paramLong -= i;
        if (paramLong == 0L) {}
        for (byte b1 = 4;; b1 = 0)
        {
          a(paramInt, i, (byte)9, b1);
          a.a_(c, i);
          break;
        }
      }
    }
    
    public final void a()
    {
      try
      {
        if (f) {
          throw new IOException("closed");
        }
      }
      finally {}
      boolean bool = b;
      if (!bool) {}
      for (;;)
      {
        return;
        if (bop.b().isLoggable(Level.FINE)) {
          bop.b().fine(String.format(">> CONNECTION %s", new Object[] { bop.a().b() }));
        }
        a.b(bop.a().d());
        a.flush();
      }
    }
    
    public final void a(int paramInt, long paramLong)
    {
      try
      {
        if (f) {
          throw new IOException("closed");
        }
      }
      finally {}
      if ((paramLong == 0L) || (paramLong > 2147483647L)) {
        throw bop.b("windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s", new Object[] { Long.valueOf(paramLong) });
      }
      a(paramInt, 4, (byte)8, (byte)0);
      a.e((int)paramLong);
      a.flush();
    }
    
    public final void a(int paramInt, boj paramboj)
    {
      try
      {
        if (f) {
          throw new IOException("closed");
        }
      }
      finally {}
      if (t == -1) {
        throw new IllegalArgumentException();
      }
      a(paramInt, 4, (byte)3, (byte)0);
      a.e(s);
      a.flush();
    }
    
    public final void a(int paramInt, boj paramboj, byte[] paramArrayOfByte)
    {
      try
      {
        if (f) {
          throw new IOException("closed");
        }
      }
      finally {}
      if (s == -1) {
        throw bop.b("errorCode.httpCode == -1", new Object[0]);
      }
      a(0, paramArrayOfByte.length + 8, (byte)7, (byte)0);
      a.e(paramInt);
      a.e(s);
      if (paramArrayOfByte.length > 0) {
        a.b(paramArrayOfByte);
      }
      a.flush();
    }
    
    public final void a(bov parambov)
    {
      try
      {
        if (f) {
          throw new IOException("closed");
        }
      }
      finally {}
      int i = e;
      if ((a & 0x20) != 0) {
        i = d[5];
      }
      e = i;
      a(0, 0, (byte)4, (byte)1);
      a.flush();
    }
    
    public final void a(boolean paramBoolean, int paramInt1, int paramInt2)
    {
      byte b1 = 0;
      try
      {
        if (f) {
          throw new IOException("closed");
        }
      }
      finally {}
      if (paramBoolean) {
        b1 = 1;
      }
      a(0, 8, (byte)6, b1);
      a.e(paramInt1);
      a.e(paramInt2);
      a.flush();
    }
    
    public final void a(boolean paramBoolean, int paramInt1, cav paramcav, int paramInt2)
    {
      byte b1 = 0;
      try
      {
        if (f) {
          throw new IOException("closed");
        }
      }
      finally {}
      if (paramBoolean) {
        b1 = 1;
      }
      a(paramInt1, paramInt2, (byte)0, b1);
      if (paramInt2 > 0) {
        a.a_(paramcav, paramInt2);
      }
    }
    
    public final void a(boolean paramBoolean, int paramInt, List<bom> paramList)
    {
      try
      {
        if (f) {
          throw new IOException("closed");
        }
      }
      finally {}
      if (f) {
        throw new IOException("closed");
      }
      if (c.b != 0L) {
        throw new IllegalStateException();
      }
      d.a(paramList);
      long l = c.b;
      int i = (int)Math.min(e, l);
      byte b1;
      if (l == i) {
        b1 = 4;
      }
      for (;;)
      {
        a(paramInt, i, (byte)1, b2);
        a.a_(c, i);
        if (l > i) {
          b(paramInt, l - i);
        }
        return;
        b1 = 0;
        byte b2 = b1;
        if (paramBoolean) {
          b2 = (byte)(b1 | 0x1);
        }
      }
    }
    
    public final void b()
    {
      try
      {
        if (f) {
          throw new IOException("closed");
        }
      }
      finally {}
      a.flush();
    }
    
    public final void b(bov parambov)
    {
      int i = 0;
      try
      {
        if (f) {
          throw new IOException("closed");
        }
      }
      finally {}
      a(0, Integer.bitCount(a) * 6, (byte)4, (byte)0);
      int j;
      if (i < 10)
      {
        if (!parambov.a(i)) {
          break label111;
        }
        if (i != 4) {
          break label118;
        }
        j = 3;
      }
      for (;;)
      {
        label64:
        a.f(j);
        a.e(d[i]);
        break label111;
        a.flush();
        return;
        label111:
        label118:
        do
        {
          j = i;
          break label64;
          i += 1;
          break;
        } while (i != 7);
        j = 4;
      }
    }
    
    public final int c()
    {
      return e;
    }
    
    public final void close()
    {
      try
      {
        f = true;
        a.close();
        return;
      }
      finally
      {
        localObject = finally;
        throw ((Throwable)localObject);
      }
    }
  }
}

/* Location:
 * Qualified Name:     bop
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */