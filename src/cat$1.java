import java.io.IOException;

final class cat$1
  implements cbj
{
  cat$1(cat paramcat, cbj paramcbj) {}
  
  public final cbl E_()
  {
    return b;
  }
  
  public final void a_(cav paramcav, long paramLong)
  {
    b.c();
    try
    {
      a.a_(paramcav, paramLong);
      b.a(true);
      return;
    }
    catch (IOException paramcav)
    {
      throw b.a(paramcav);
    }
    finally
    {
      b.a(false);
    }
  }
  
  public final void close()
  {
    b.c();
    try
    {
      a.close();
      b.a(true);
      return;
    }
    catch (IOException localIOException)
    {
      throw b.a(localIOException);
    }
    finally
    {
      b.a(false);
    }
  }
  
  public final void flush()
  {
    b.c();
    try
    {
      a.flush();
      b.a(true);
      return;
    }
    catch (IOException localIOException)
    {
      throw b.a(localIOException);
    }
    finally
    {
      b.a(false);
    }
  }
  
  public final String toString()
  {
    return "AsyncTimeout.sink(" + a + ")";
  }
}

/* Location:
 * Qualified Name:     cat.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */