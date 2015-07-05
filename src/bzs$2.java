import java.io.IOException;

final class bzs$2
  implements caj
{
  bzs$2(bzs parambzs, caj paramcaj) {}
  
  public final cak E_()
  {
    return b;
  }
  
  public final long a(bzu parambzu, long paramLong)
  {
    b.c();
    try
    {
      paramLong = a.a(parambzu, paramLong);
      b.a(true);
      return paramLong;
    }
    catch (IOException parambzu)
    {
      throw b.a(parambzu);
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
 * Qualified Name:     bzs.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */