import java.net.InetAddress;
import java.net.UnknownHostException;

public abstract interface bnm
{
  public static final bnm a = new bnm()
  {
    public final InetAddress[] a(String paramAnonymousString)
    {
      if (paramAnonymousString == null) {
        throw new UnknownHostException("host == null");
      }
      return InetAddress.getAllByName(paramAnonymousString);
    }
  };
  
  public abstract InetAddress[] a(String paramString);
}

/* Location:
 * Qualified Name:     bnm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */