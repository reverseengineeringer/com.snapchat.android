import android.os.Bundle;
import com.snapchat.android.Timber;
import com.snapchat.android.discover.util.network.DiscoverEndpointManager;
import javax.inject.Provider;

public final class acc
  implements Provider<Bundle>
{
  private final DiscoverEndpointManager a;
  
  public acc()
  {
    this(DiscoverEndpointManager.a());
  }
  
  private acc(DiscoverEndpointManager paramDiscoverEndpointManager)
  {
    a = paramDiscoverEndpointManager;
  }
  
  @cgc
  public final Bundle a()
  {
    String str1 = a.c();
    String str2 = a.d();
    if ((str1 == null) || (str2 == null))
    {
      Timber.e("ContextAwareParamsProvider", "Cannot retrieve params, resource params are null", new Object[0]);
      return null;
    }
    Bundle localBundle = new Bundle();
    localBundle.putString(str1, str2);
    return localBundle;
  }
}

/* Location:
 * Qualified Name:     acc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */