import java.io.IOException;

class bni
  extends cba
{
  private boolean a;
  
  public bni(cbj paramcbj)
  {
    super(paramcbj);
  }
  
  protected void a() {}
  
  public final void a_(cav paramcav, long paramLong)
  {
    if (a)
    {
      paramcav.f(paramLong);
      return;
    }
    try
    {
      super.a_(paramcav, paramLong);
      return;
    }
    catch (IOException paramcav)
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
 * Qualified Name:     bni
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */