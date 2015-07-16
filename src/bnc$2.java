import java.io.Closeable;
import java.io.File;

public final class bnc$2
  extends bnc
{
  public bnc$2(bmx parambmx, File paramFile) {}
  
  public final bmx a()
  {
    return a;
  }
  
  public final void a(caw paramcaw)
  {
    Object localObject = null;
    try
    {
      cbk localcbk = cbe.a(b);
      localObject = localcbk;
      paramcaw.a(localcbk);
      bnq.a(localcbk);
      return;
    }
    finally
    {
      bnq.a((Closeable)localObject);
    }
  }
  
  public final long b()
  {
    return b.length();
  }
}

/* Location:
 * Qualified Name:     bnc.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */