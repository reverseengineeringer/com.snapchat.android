import javax.net.ssl.SSLSocketFactory;

final class btp$a
  implements Runnable
{
  boolean a = false;
  private boolean b;
  private btp c;
  
  public btp$a(btp parambtp)
  {
    c = parambtp;
    b = true;
  }
  
  public final void run()
  {
    if (b)
    {
      a = c.b();
      return;
    }
    btp localbtp = c;
    try
    {
      SSLSocketFactory localSSLSocketFactory = btp.c();
      if ((localSSLSocketFactory instanceof bqb)) {
        btp.a(a);
      }
      c = null;
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      btp.a(localIllegalArgumentException);
      return;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      btp.a(localIllegalAccessException);
      return;
    }
    catch (brz localbrz)
    {
      btp.a(localbrz);
    }
  }
}

/* Location:
 * Qualified Name:     btp.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */