import java.util.logging.Level;
import java.util.logging.Logger;

final class bno$a
  implements caj
{
  int a;
  byte b;
  int c;
  int d;
  short e;
  private final bzw f;
  
  public bno$a(bzw parambzw)
  {
    f = parambzw;
  }
  
  public final cak E_()
  {
    return f.E_();
  }
  
  public final long a(bzu parambzu, long paramLong)
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
      int j = bno.a(f);
      d = j;
      a = j;
      byte b1 = (byte)(f.f() & 0xFF);
      b = ((byte)(f.f() & 0xFF));
      if (bno.b().isLoggable(Level.FINE)) {
        bno.b().fine(bno.b.a(true, c, a, b1, b));
      }
      c = (f.h() & 0x7FFFFFFF);
      if (b1 != 9) {
        throw bno.a("%s != TYPE_CONTINUATION", new Object[] { Byte.valueOf(b1) });
      }
      if (c == i) {
        break;
      }
      throw bno.a("TYPE_CONTINUATION streamId changed", new Object[0]);
      paramLong = f.a(parambzu, Math.min(paramLong, d));
    } while (paramLong == -1L);
    d = ((int)(d - paramLong));
    return paramLong;
  }
  
  public final void close() {}
}

/* Location:
 * Qualified Name:     bno.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */