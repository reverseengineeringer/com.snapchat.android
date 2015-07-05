import java.net.ProtocolException;
import java.util.concurrent.TimeUnit;

final class bmu$e
  extends bmu.a
{
  private long d;
  
  public bmu$e(bmu parambmu, long paramLong)
  {
    super(parambmu, (byte)0);
    d = paramLong;
    if (d == 0L) {
      a(true);
    }
  }
  
  public final long a(bzu parambzu, long paramLong)
  {
    if (paramLong < 0L) {
      throw new IllegalArgumentException("byteCount < 0: " + paramLong);
    }
    if (a) {
      throw new IllegalStateException("closed");
    }
    if (d == 0L) {
      return -1L;
    }
    paramLong = c.c.a(parambzu, Math.min(d, paramLong));
    if (paramLong == -1L)
    {
      b();
      throw new ProtocolException("unexpected end of stream");
    }
    d -= paramLong;
    if (d == 0L) {
      a(true);
    }
    return paramLong;
  }
  
  public final void close()
  {
    if (a) {
      return;
    }
    if ((d != 0L) && (!bmp.a(this, TimeUnit.MILLISECONDS))) {
      b();
    }
    a = true;
  }
}

/* Location:
 * Qualified Name:     bmu.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */