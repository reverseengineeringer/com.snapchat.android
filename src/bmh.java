import java.io.IOException;

class bmh
  extends bzz
{
  private boolean a;
  
  public bmh(cai paramcai)
  {
    super(paramcai);
  }
  
  protected void a() {}
  
  public final void a_(bzu parambzu, long paramLong)
  {
    if (a)
    {
      parambzu.f(paramLong);
      return;
    }
    try
    {
      super.a_(parambzu, paramLong);
      return;
    }
    catch (IOException parambzu)
    {
      a = true;
      a();
    }
  }
  
  public void close()
  {
    if (a) {
      return;
    }
    try
    {
      super.close();
      return;
    }
    catch (IOException localIOException)
    {
      a = true;
      a();
    }
  }
  
  public void flush()
  {
    if (a) {
      return;
    }
    try
    {
      super.flush();
      return;
    }
    catch (IOException localIOException)
    {
      a = true;
      a();
    }
  }
}

/* Location:
 * Qualified Name:     bmh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */