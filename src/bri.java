import org.apache.http.util.CharArrayBuffer;

public final class bri
  extends brg
{
  private brj d;
  private int e;
  private int f = 0;
  
  public bri(brj parambrj, int paramInt)
  {
    super(parambrj);
    d = parambrj;
    e = paramInt;
  }
  
  public final boolean a(int paramInt)
  {
    if (f >= e + 2) {}
    do
    {
      do
      {
        return false;
        if (paramInt == -1)
        {
          a.b(a());
          a.a(brt.d);
          return true;
        }
        c += 1;
        paramInt = (char)paramInt;
        f += 1;
      } while (f <= e);
      if (paramInt == 10)
      {
        d.b(a());
        a.a(d);
        return true;
      }
    } while ((f != e + 2) || (paramInt == 10));
    a.a(brt.d);
    return true;
  }
  
  public final boolean a(CharArrayBuffer paramCharArrayBuffer)
  {
    return true;
  }
  
  public final brg b()
  {
    return d;
  }
  
  public final brg c()
  {
    return null;
  }
  
  protected final int d()
  {
    return 0;
  }
  
  protected final int e()
  {
    return 0;
  }
  
  public final void f()
  {
    a.b(a());
    a.a(brt.d);
  }
}

/* Location:
 * Qualified Name:     bri
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */