import java.io.IOException;

final class cat$2
  implements cbk
{
  cat$2(cat paramcat, cbk paramcbk) {}
  
  public final cbl E_()
  {
    return b;
  }
  
  public final long a(cav paramcav, long paramLong)
  {
    b.c();
    try
    {
      paramLong = a.a(paramcav, paramLong);
      b.a(true);
      return paramLong;
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
  
  public final String toString()
  {
    return "AsyncTimeout.source(" + a + ")";
  }
}

/* Location:
 * Qualified Name:     cat.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */