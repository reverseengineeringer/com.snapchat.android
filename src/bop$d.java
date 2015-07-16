import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

final class bop$d
  implements bol
{
  private final caw a;
  private final boolean b;
  private final cav c;
  private final boo.b d;
  private int e;
  private boolean f;
  
  bop$d(caw paramcaw, boolean paramBoolean)
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

/* Location:
 * Qualified Name:     bop.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */