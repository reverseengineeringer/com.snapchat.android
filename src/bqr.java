import org.apache.http.util.CharArrayBuffer;

public final class bqr
  extends bqf
{
  private bqf d;
  
  public bqr(bqf parambqf)
  {
    super(parambqf);
    d = parambqf;
  }
  
  public final boolean a(int paramInt)
  {
    if (paramInt == -1)
    {
      a.a(bqs.d);
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
  
  public final bqf b()
  {
    return this;
  }
  
  public final bqf c()
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
 * Qualified Name:     bqr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */