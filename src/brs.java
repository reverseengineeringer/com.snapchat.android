import org.apache.http.util.CharArrayBuffer;

public final class brs
  extends brg
{
  private brg d;
  
  public brs(brg parambrg)
  {
    super(parambrg);
    d = parambrg;
  }
  
  public final boolean a(int paramInt)
  {
    if (paramInt == -1)
    {
      a.a(brt.d);
      return true;
    }
    c += 1;
    if ((char)paramInt == '\n')
    {
      d.b(a());
      a.a(d);
      return true;
    }
    return false;
  }
  
  public final boolean a(CharArrayBuffer paramCharArrayBuffer)
  {
    return true;
  }
  
  public final brg b()
  {
    return this;
  }
  
  public final brg c()
  {
    return this;
  }
  
  protected final int d()
  {
    return 0;
  }
  
  protected final int e()
  {
    return 0;
  }
}

/* Location:
 * Qualified Name:     brs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */