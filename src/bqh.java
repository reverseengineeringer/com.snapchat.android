import org.apache.http.util.CharArrayBuffer;

public final class bqh
  extends bqf
{
  private bqi d;
  private int e;
  private int f = 0;
  
  public bqh(bqi parambqi, int paramInt)
  {
    super(parambqi);
    d = parambqi;
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
          a.a(bqs.d);
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
    a.a(bqs.d);
    return true;
  }
  
  public final boolean a(CharArrayBuffer paramCharArrayBuffer)
  {
    return true;
  }
  
  public final bqf b()
  {
    return d;
  }
  
  public final bqf c()
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
    a.a(bqs.d);
  }
}

/* Location:
 * Qualified Name:     bqh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */