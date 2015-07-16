import javax.net.ssl.SSLSocketFactory;

final class buq$a
  implements Runnable
{
  boolean a = false;
  private boolean b;
  private buq c;
  
  public buq$a(buq parambuq)
  {
    c = parambuq;
    b = true;
  }
  
  public final void run()
  {
    if (b)
    {
      a = c.b();
      return;
    }
    buq localbuq = c;
    try
    {
      SSLSocketFactory localSSLSocketFactory = buq.c();
      if ((localSSLSocketFactory instanceof brc)) {
        buq.a(a);
      }
      c = null;
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      buq.a(localIllegalArgumentException);
      return;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      buq.a(localIllegalAccessException);
      return;
    }
    catch (bta localbta)
    {
      buq.a(localbta);
    }
  }
}

/* Location:
 * Qualified Name:     buq.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */