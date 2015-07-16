import java.util.logging.Level;
import java.util.logging.Logger;

final class bop$a
  implements cbk
{
  int a;
  byte b;
  int c;
  int d;
  short e;
  private final cax f;
  
  public bop$a(cax paramcax)
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

/* Location:
 * Qualified Name:     bop.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */