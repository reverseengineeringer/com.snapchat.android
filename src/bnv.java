import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.ProtocolException;
import java.nio.charset.Charset;
import java.util.List;
import java.util.zip.Deflater;

public final class bnv
  implements bny
{
  static final byte[] a;
  
  static
  {
    try
    {
      a = "\000\000\000\007options\000\000\000\004head\000\000\000\004post\000\000\000\003put\000\000\000\006delete\000\000\000\005trace\000\000\000\006accept\000\000\000\016accept-charset\000\000\000\017accept-encoding\000\000\000\017accept-language\000\000\000\raccept-ranges\000\000\000\003age\000\000\000\005allow\000\000\000\rauthorization\000\000\000\rcache-control\000\000\000\nconnection\000\000\000\fcontent-base\000\000\000\020content-encoding\000\000\000\020content-language\000\000\000\016content-length\000\000\000\020content-location\000\000\000\013content-md5\000\000\000\rcontent-range\000\000\000\fcontent-type\000\000\000\004date\000\000\000\004etag\000\000\000\006expect\000\000\000\007expires\000\000\000\004from\000\000\000\004host\000\000\000\bif-match\000\000\000\021if-modified-since\000\000\000\rif-none-match\000\000\000\bif-range\000\000\000\023if-unmodified-since\000\000\000\rlast-modified\000\000\000\blocation\000\000\000\fmax-forwards\000\000\000\006pragma\000\000\000\022proxy-authenticate\000\000\000\023proxy-authorization\000\000\000\005range\000\000\000\007referer\000\000\000\013retry-after\000\000\000\006server\000\000\000\002te\000\000\000\007trailer\000\000\000\021transfer-encoding\000\000\000\007upgrade\000\000\000\nuser-agent\000\000\000\004vary\000\000\000\003via\000\000\000\007warning\000\000\000\020www-authenticate\000\000\000\006method\000\000\000\003get\000\000\000\006status\000\000\000\006200 OK\000\000\000\007version\000\000\000\bHTTP/1.1\000\000\000\003url\000\000\000\006public\000\000\000\nset-cookie\000\000\000\nkeep-alive\000\000\000\006origin100101201202205206300302303304305306307402405406407408409410411412413414415416417502504505203 Non-Authoritative Information204 No Content301 Moved Permanently400 Bad Request401 Unauthorized403 Forbidden404 Not Found500 Internal Server Error501 Not Implemented503 Service UnavailableJan Feb Mar Apr May Jun Jul Aug Sept Oct Nov Dec 00:00:00 Mon, Tue, Wed, Thu, Fri, Sat, Sun, GMTchunked,text/html,image/png,image/jpg,image/gif,application/xml,application/xhtml+xml,text/plain,text/javascript,publicprivatemax-age=gzip,deflate,sdchcharset=utf-8charset=iso-8859-1,utf-,*,enq=0.".getBytes(bmp.c.name());
      return;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      throw new AssertionError();
    }
  }
  
  public final bnj a(bzw parambzw, boolean paramBoolean)
  {
    return new bnv.a(parambzw, paramBoolean);
  }
  
  public final bnk a(bzv parambzv, boolean paramBoolean)
  {
    return new bnv.b(parambzv, paramBoolean);
  }
  
  static final class a
    implements bnj
  {
    private final bzw a;
    private final boolean b;
    private final bnr c;
    
    a(bzw parambzw, boolean paramBoolean)
    {
      a = parambzw;
      c = new bnr(a);
      b = paramBoolean;
    }
    
    private static IOException a(String paramString, Object... paramVarArgs)
    {
      throw new IOException(String.format(paramString, paramVarArgs));
    }
    
    private void a(bnj.a parama, int paramInt1, int paramInt2)
    {
      boolean bool = true;
      int i = a.h();
      if (paramInt2 != i * 8 + 4) {
        throw a("TYPE_SETTINGS length: %d != 4 + 8 * %d", new Object[] { Integer.valueOf(paramInt2), Integer.valueOf(i) });
      }
      bnu localbnu = new bnu();
      paramInt2 = 0;
      while (paramInt2 < i)
      {
        int j = a.h();
        localbnu.a(j & 0xFFFFFF, (0xFF000000 & j) >>> 24, a.h());
        paramInt2 += 1;
      }
      if ((paramInt1 & 0x1) != 0) {}
      for (;;)
      {
        parama.a(bool, localbnu);
        return;
        bool = false;
      }
    }
    
    public final void a() {}
    
    public final boolean a(bnj.a parama)
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
          parama.a(bool2, bool1, i & 0x7FFFFFFF, (List)localObject, bnm.a);
          return true;
        }
      case 2: 
        i = a.h();
        localObject = c.a(m - 4);
        if ((k & 0x1) != 0) {}
        for (bool1 = true;; bool1 = false)
        {
          parama.a(false, bool1, i & 0x7FFFFFFF, (List)localObject, bnm.b);
          return true;
        }
      case 3: 
        if (m != 8) {
          throw a("TYPE_RST_STREAM length: %d != 8", new Object[] { Integer.valueOf(m) });
        }
        i = a.h();
        j = a.h();
        localObject = bni.a(j);
        if (localObject == null) {
          throw a("TYPE_RST_STREAM unexpected error code: %d", new Object[] { Integer.valueOf(j) });
        }
        parama.a(i & 0x7FFFFFFF, (bni)localObject);
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
        if (bni.c(j) == null) {
          throw a("TYPE_GOAWAY unexpected error code: %d", new Object[] { Integer.valueOf(j) });
        }
        parama.a(i & 0x7FFFFFFF, bzx.b);
        return true;
      case 8: 
        label496:
        parama.a(false, false, a.h() & 0x7FFFFFFF, c.a(m - 4), bnm.c);
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
  
  static final class b
    implements bnk
  {
    private final bzv a;
    private final bzu b;
    private final bzv c;
    private final boolean d;
    private boolean e;
    
    b(bzv parambzv, boolean paramBoolean)
    {
      a = parambzv;
      d = paramBoolean;
      parambzv = new Deflater();
      parambzv.setDictionary(bnv.a);
      b = new bzu();
      c = cad.a(new bzy(b, parambzv));
    }
    
    private void a(List<bnl> paramList)
    {
      if (b.b != 0L) {
        throw new IllegalStateException();
      }
      c.e(paramList.size());
      int j = paramList.size();
      int i = 0;
      while (i < j)
      {
        bzx localbzx = geth;
        c.e(c.length);
        c.b(localbzx);
        localbzx = geti;
        c.e(c.length);
        c.b(localbzx);
        i += 1;
      }
      c.flush();
    }
    
    public final void a() {}
    
    public final void a(int paramInt, long paramLong)
    {
      try
      {
        if (e) {
          throw new IOException("closed");
        }
      }
      finally {}
      if ((paramLong == 0L) || (paramLong > 2147483647L)) {
        throw new IllegalArgumentException("windowSizeIncrement must be between 1 and 0x7fffffff: " + paramLong);
      }
      a.e(-2147287031);
      a.e(8);
      a.e(paramInt);
      a.e((int)paramLong);
      a.flush();
    }
    
    public final void a(int paramInt, bni parambni)
    {
      try
      {
        if (e) {
          throw new IOException("closed");
        }
      }
      finally {}
      if (t == -1) {
        throw new IllegalArgumentException();
      }
      a.e(-2147287037);
      a.e(8);
      a.e(0x7FFFFFFF & paramInt);
      a.e(t);
      a.flush();
    }
    
    public final void a(int paramInt, bni parambni, byte[] paramArrayOfByte)
    {
      try
      {
        if (e) {
          throw new IOException("closed");
        }
      }
      finally {}
      if (u == -1) {
        throw new IllegalArgumentException("errorCode.spdyGoAwayCode == -1");
      }
      a.e(-2147287033);
      a.e(8);
      a.e(paramInt);
      a.e(u);
      a.flush();
    }
    
    public final void a(bnu parambnu) {}
    
    public final void a(boolean paramBoolean, int paramInt1, int paramInt2)
    {
      boolean bool2 = true;
      try
      {
        if (e) {
          throw new IOException("closed");
        }
      }
      finally {}
      boolean bool3 = d;
      boolean bool1;
      if ((paramInt1 & 0x1) == 1) {
        bool1 = true;
      }
      for (;;)
      {
        if (paramBoolean != bool1) {
          throw new IllegalArgumentException("payload != reply");
        }
        a.e(-2147287034);
        a.e(4);
        a.e(paramInt1);
        a.flush();
        return;
        for (;;)
        {
          if (bool3 == bool1) {
            break label130;
          }
          bool1 = bool2;
          break;
          bool1 = false;
        }
        label130:
        bool1 = false;
      }
    }
    
    public final void a(boolean paramBoolean, int paramInt1, bzu parambzu, int paramInt2)
    {
      if (paramBoolean) {}
      for (int i = 1;; i = 0) {
        try
        {
          if (!e) {
            break;
          }
          throw new IOException("closed");
        }
        finally {}
      }
      if (paramInt2 > 16777215L) {
        throw new IllegalArgumentException("FRAME_TOO_LARGE max size is 16Mib: " + paramInt2);
      }
      a.e(0x7FFFFFFF & paramInt1);
      a.e((i & 0xFF) << 24 | 0xFFFFFF & paramInt2);
      if (paramInt2 > 0) {
        a.a_(parambzu, paramInt2);
      }
    }
    
    public final void a(boolean paramBoolean, int paramInt, List<bnl> paramList)
    {
      int i = 0;
      try
      {
        if (e) {
          throw new IOException("closed");
        }
      }
      finally {}
      a(paramList);
      int j = (int)(10L + b.b);
      if (paramBoolean) {
        i = 1;
      }
      a.e(-2147287039);
      a.e(((i | 0x0) & 0xFF) << 24 | j & 0xFFFFFF);
      a.e(0x7FFFFFFF & paramInt);
      a.e(0);
      a.f(0);
      a.a(b);
      a.flush();
    }
    
    public final void b()
    {
      try
      {
        if (e) {
          throw new IOException("closed");
        }
      }
      finally {}
      a.flush();
    }
    
    public final void b(bnu parambnu)
    {
      try
      {
        if (e) {
          throw new IOException("closed");
        }
      }
      finally {}
      int i = Integer.bitCount(a);
      a.e(-2147287036);
      a.e(i * 8 + 4 & 0xFFFFFF | 0x0);
      a.e(i);
      i = 0;
      for (;;)
      {
        if (i <= 10)
        {
          if (parambnu.a(i))
          {
            int j = parambnu.b(i);
            a.e((j & 0xFF) << 24 | i & 0xFFFFFF);
            a.e(d[i]);
          }
        }
        else
        {
          a.flush();
          return;
        }
        i += 1;
      }
    }
    
    public final int c()
    {
      return 16383;
    }
    
    public final void close()
    {
      try
      {
        e = true;
        bmp.a(a, c);
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
 * Qualified Name:     bnv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */