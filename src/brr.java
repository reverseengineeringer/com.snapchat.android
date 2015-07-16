import org.apache.http.util.CharArrayBuffer;

public final class brr
  extends brg
{
  private boolean d = false;
  
  public brr(brg parambrg)
  {
    super(parambrg);
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
  
  public final brg b()
  {
    if (d)
    {
      a.b(a());
      return a.b();
    }
    b.clear();
    return this;
  }
  
  public final brg c()
  {
    b.clear();
    return new brs(this);
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
 * Qualified Name:     brr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */