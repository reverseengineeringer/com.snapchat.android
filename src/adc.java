import android.os.Bundle;
import com.snapchat.android.discover.util.network.DiscoverEndpointManager;
import javax.inject.Provider;

public final class adc
  implements Provider<Bundle>
{
  private final DiscoverEndpointManager a;
  
  public adc()
  {
    this(DiscoverEndpointManager.a());
  }
  
  private adc(DiscoverEndpointManager paramDiscoverEndpointManager)
  {
    a = paramDiscoverEndpointManager;
  }
  
  @chd
  public final Bundle a()
  {
    String str1 = a.c();
    String str2 = a.d();
    if ((str1 == null) || (str2 == null)) {
      return null;
    }
    Bundle localBundle = new Bundle();
    localBundle.putString(str1, str2);
    return localBundle;
  }
}

/* Location:
 * Qualified Name:     adc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */