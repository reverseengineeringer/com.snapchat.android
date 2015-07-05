import android.content.Context;
import java.net.URL;
import java.net.URLConnection;

public final class bvz
  extends bvy
{
  public long g;
  
  public bvz(Context paramContext, String paramString, bvp parambvp)
  {
    super(paramContext, paramString, parambvp);
  }
  
  protected final void a(Long paramLong)
  {
    g = paramLong.longValue();
    if (g > 0L)
    {
      b.a(this);
      return;
    }
    b.a(Boolean.valueOf(false));
  }
  
  protected final void a(Integer... paramVarArgs) {}
  
  protected final Long b()
  {
    try
    {
      long l = a(new URL(c()), 6).getContentLength();
      return Long.valueOf(l);
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return Long.valueOf(0L);
  }
}

/* Location:
 * Qualified Name:     bvz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */