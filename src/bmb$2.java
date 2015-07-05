import java.io.Closeable;
import java.io.File;

public final class bmb$2
  extends bmb
{
  public bmb$2(blw paramblw, File paramFile) {}
  
  public final blw a()
  {
    return a;
  }
  
  public final void a(bzv parambzv)
  {
    Object localObject = null;
    try
    {
      caj localcaj = cad.a(b);
      localObject = localcaj;
      parambzv.a(localcaj);
      bmp.a(localcaj);
      return;
    }
    finally
    {
      bmp.a((Closeable)localObject);
    }
  }
  
  public final long b()
  {
    return b.length();
  }
}

/* Location:
 * Qualified Name:     bmb.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */