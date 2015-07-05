import android.os.Bundle;
import com.snapchat.android.api2.framework.HttpMethod;
import com.snapchat.android.discover.util.network.DiscoverEndpointManager;

public final class abv
  extends tg
{
  private final String mEditionId;
  private final DiscoverEndpointManager mEndpointManager;
  
  private abv(DiscoverEndpointManager paramDiscoverEndpointManager, String paramString)
  {
    mEndpointManager = paramDiscoverEndpointManager;
    mEditionId = paramString;
  }
  
  public abv(String paramString)
  {
    this(DiscoverEndpointManager.a(), paramString);
  }
  
  public final Object b()
  {
    return null;
  }
  
  public final HttpMethod c()
  {
    return HttpMethod.GET;
  }
  
  public final String d()
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("edition", mEditionId);
    localBundle.putString("platform", "android");
    return atq.a(mEndpointManager.c, localBundle);
  }
}

/* Location:
 * Qualified Name:     abv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */