import java.io.IOException;
import java.util.concurrent.TimeUnit;

public final class bnx$2
  implements cbk
{
  boolean a;
  
  public bnx$2(bnx parambnx, cax paramcax, bns parambns, caw paramcaw) {}
  
  public final cbl E_()
  {
    return b.E_();
  }
  
  public final long a(cav paramcav, long paramLong)
  {
    try
    {
      paramLong = b.a(paramcav, paramLong);
      if (paramLong == -1L)
      {
        if (!a)
        {
          a = true;
          d.close();
        }
        return -1L;
      }
    }
    catch (IOException paramcav)
    {
      if (!a)
      {
        a = true;
        c.a();
      }
      throw paramcav;
    }
    paramcav.a(d.b(), b - paramLong, paramLong);
    d.q();
    return paramLong;
  }
  
  public final void close()
  {
    if ((!a) && (!bnq.a(this, TimeUnit.MILLISECONDS)))
    {
      a = true;
      c.a();
    }
    b.close();
  }
}

/* Location:
 * Qualified Name:     bnx.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */