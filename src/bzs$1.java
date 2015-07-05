import java.io.IOException;

final class bzs$1
  implements cai
{
  bzs$1(bzs parambzs, cai paramcai) {}
  
  public final cak E_()
  {
    return b;
  }
  
  public final void a_(bzu parambzu, long paramLong)
  {
    b.c();
    try
    {
      a.a_(parambzu, paramLong);
      b.a(true);
      return;
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
 * Qualified Name:     bzs.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */