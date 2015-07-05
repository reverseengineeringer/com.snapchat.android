import java.io.IOException;
import java.util.Set;

final class bnw$6
  extends bmk
{
  bnw$6(bnw parambnw, String paramString, Object[] paramArrayOfObject, int paramInt1, bzu parambzu, int paramInt2, boolean paramVarArgs)
  {
    super(paramString, paramArrayOfObject);
  }
  
  public final void a()
  {
    try
    {
      bnw.j(f).a(c, d);
      f.i.a(b, bni.l);
      synchronized (f)
      {
        bnw.k(f).remove(Integer.valueOf(b));
        return;
      }
      return;
    }
    catch (IOException localIOException) {}
  }
}

/* Location:
 * Qualified Name:     bnw.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */