import java.io.IOException;
import java.util.List;
import java.util.Set;

final class bnw$4
  extends bmk
{
  bnw$4(bnw parambnw, String paramString, Object[] paramArrayOfObject, int paramInt, List paramVarArgs)
  {
    super(paramString, paramArrayOfObject);
  }
  
  public final void a()
  {
    bnw.j(d).a();
    try
    {
      d.i.a(b, bni.l);
      synchronized (d)
      {
        bnw.k(d).remove(Integer.valueOf(b));
        return;
      }
      return;
    }
    catch (IOException localIOException) {}
  }
}

/* Location:
 * Qualified Name:     bnw.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */