import org.apache.http.util.CharArrayBuffer;

public final class bqq
  extends bqf
{
  private boolean d = false;
  
  public bqq(bqf parambqf)
  {
    super(parambqf);
  }
  
  public final boolean a(CharArrayBuffer paramCharArrayBuffer)
  {
    boolean bool = false;
    if (paramCharArrayBuffer.substringTrimmed(0, paramCharArrayBuffer.length()).length() == 0) {
      bool = true;
    }
    d = bool;
    return true;
  }
  
  public final bqf b()
  {
    if (d)
    {
      a.b(a());
      return a.b();
    }
    b.clear();
    return this;
  }
  
  public final bqf c()
  {
    b.clear();
    return new bqr(this);
  }
  
  protected final int d()
  {
    return 8;
  }
  
  protected final int e()
  {
    return 128;
  }
}

/* Location:
 * Qualified Name:     bqq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */