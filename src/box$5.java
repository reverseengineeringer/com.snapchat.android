import java.io.IOException;
import java.util.List;
import java.util.Set;

final class box$5
  extends bnl
{
  box$5(box parambox, String paramString, Object[] paramArrayOfObject, int paramInt, List paramList, boolean paramVarArgs)
  {
    super(paramString, paramArrayOfObject);
  }
  
  public final void a()
  {
    box.j(e);
    try
    {
      e.i.a(b, boj.l);
      synchronized (e)
      {
        box.k(e).remove(Integer.valueOf(b));
        return;
      }
      return;
    }
    catch (IOException localIOException) {}
  }
}

/* Location:
 * Qualified Name:     box.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */