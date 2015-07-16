import java.net.InetAddress;
import java.net.UnknownHostException;

final class bnm$1
  implements bnm
{
  public final InetAddress[] a(String paramString)
  {
    if (paramString == null) {
      throw new UnknownHostException("host == null");
    }
    return InetAddress.getAllByName(paramString);
  }
}

/* Location:
 * Qualified Name:     bnm.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */