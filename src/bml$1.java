import java.net.InetAddress;
import java.net.UnknownHostException;

final class bml$1
  implements bml
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
 * Qualified Name:     bml.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */