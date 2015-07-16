import java.net.ProtocolException;
import java.util.concurrent.TimeUnit;

final class bnv$e
  extends bnv.a
{
  private long d;
  
  public bnv$e(bnv parambnv, long paramLong)
  {
    super(parambnv, (byte)0);
    d = paramLong;
    if (d == 0L) {
      a(true);
    }
  }
  
  public final long a(cav paramcav, long paramLong)
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
    paramLong = c.c.a(paramcav, Math.min(d, paramLong));
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
    if ((d != 0L) && (!bnq.a(this, TimeUnit.MILLISECONDS))) {
      b();
    }
    a = true;
  }
}

/* Location:
 * Qualified Name:     bnv.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */