import java.io.IOException;
import java.net.ProtocolException;
import java.util.concurrent.TimeUnit;

final class bnv$c
  extends bnv.a
{
  private long d = -1L;
  private boolean e = true;
  private final bnx f;
  
  bnv$c(bnv parambnv, bnx parambnx)
  {
    super(parambnv, (byte)0);
    f = parambnx;
  }
  
  public final long a(cav paramcav, long paramLong)
  {
    if (paramLong < 0L) {
      throw new IllegalArgumentException("byteCount < 0: " + paramLong);
    }
    if (a) {
      throw new IllegalStateException("closed");
    }
    if (!e) {}
    do
    {
      return -1L;
      if ((d != 0L) && (d != -1L)) {
        break;
      }
      if (d != -1L) {
        c.c.n();
      }
      Object localObject;
      try
      {
        d = c.c.l();
        localObject = c.c.n().trim();
        if ((d < 0L) || ((!((String)localObject).isEmpty()) && (!((String)localObject).startsWith(";")))) {
          throw new ProtocolException("expected chunk size and optional extensions but was \"" + d + (String)localObject + "\"");
        }
      }
      catch (NumberFormatException paramcav)
      {
        throw new ProtocolException(paramcav.getMessage());
      }
      if (d == 0L)
      {
        e = false;
        localObject = new bmv.a();
        c.a((bmv.a)localObject);
        f.a(((bmv.a)localObject).a());
        a(true);
      }
    } while (!e);
    paramLong = c.c.a(paramcav, Math.min(paramLong, d));
    if (paramLong == -1L)
    {
      b();
      throw new IOException("unexpected end of stream");
    }
    d -= paramLong;
    return paramLong;
  }
  
  public final void close()
  {
    if (a) {
      return;
    }
    if ((e) && (!bnq.a(this, TimeUnit.MILLISECONDS))) {
      b();
    }
    a = true;
  }
}

/* Location:
 * Qualified Name:     bnv.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */