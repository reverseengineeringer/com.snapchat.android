import java.io.IOException;
import java.util.List;
import java.util.Set;

final class bnw$5
  extends bmk
{
  bnw$5(bnw parambnw, String paramString, Object[] paramArrayOfObject, int paramInt, List paramList, boolean paramVarArgs)
  {
    super(paramString, paramArrayOfObject);
  }
  
  public final void a()
  {
    bnw.j(e).b();
    try
    {
      e.i.a(b, bni.l);
      synchronized (e)
      {
        bnw.k(e).remove(Integer.valueOf(b));
        return;
      }
      return;
    }
    catch (IOException localIOException) {}
  }
}

/* Location:
 * Qualified Name:     bnw.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */