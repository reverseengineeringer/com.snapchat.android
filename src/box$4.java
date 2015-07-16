import java.io.IOException;
import java.util.List;
import java.util.Set;

final class box$4
  extends bnl
{
  box$4(box parambox, String paramString, Object[] paramArrayOfObject, int paramInt, List paramVarArgs)
  {
    super(paramString, paramArrayOfObject);
  }
  
  public final void a()
  {
    box.j(d);
    try
    {
      d.i.a(b, boj.l);
      synchronized (d)
      {
        box.k(d).remove(Integer.valueOf(b));
        return;
      }
      return;
    }
    catch (IOException localIOException) {}
  }
}

/* Location:
 * Qualified Name:     box.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */