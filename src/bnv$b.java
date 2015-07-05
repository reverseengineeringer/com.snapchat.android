import java.io.IOException;
import java.util.List;
import java.util.zip.Deflater;

final class bnv$b
  implements bnk
{
  private final bzv a;
  private final bzu b;
  private final bzv c;
  private final boolean d;
  private boolean e;
  
  bnv$b(bzv parambzv, boolean paramBoolean)
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

/* Location:
 * Qualified Name:     bnv.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */