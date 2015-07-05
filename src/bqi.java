import org.apache.http.util.CharArrayBuffer;

public final class bqi
  extends bqf
{
  private int d = -1;
  
  public bqi(bqf parambqf)
  {
    super(parambqf);
  }
  
  public final boolean a(CharArrayBuffer paramCharArrayBuffer)
  {
    int i = paramCharArrayBuffer.indexOf(59);
    int j = paramCharArrayBuffer.length();
    if (i > 0) {}
    for (;;)
    {
      try
      {
        d = Integer.parseInt(paramCharArrayBuffer.substringTrimmed(0, i), 16);
        return true;
      }
      catch (NumberFormatException paramCharArrayBuffer)
      {
        return false;
      }
      i = j;
    }
  }
  
  public final bqf b()
  {
    if (d == 0) {
      return new bqq(this);
    }
    b.clear();
    return new bqh(this, d);
  }
  
  public final bqf c()
  {
    return bqs.d;
  }
  
  protected final int d()
  {
    return 16;
  }
  
  protected final int e()
  {
    return 256;
  }
  
  public final void f()
  {
    a.b(a());
    a.a(bqs.d);
  }
}

/* Location:
 * Qualified Name:     bqi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */