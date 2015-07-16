import android.os.Bundle;
import com.snapchat.android.api2.framework.HttpMethod;
import com.snapchat.android.discover.util.network.DiscoverEndpointManager;

public final class acv
  extends tw
{
  private final String mEditionId;
  private final DiscoverEndpointManager mEndpointManager;
  
  private acv(DiscoverEndpointManager paramDiscoverEndpointManager, String paramString)
  {
    mEndpointManager = paramDiscoverEndpointManager;
    mEditionId = paramString;
  }
  
  public acv(String paramString)
  {
    this(DiscoverEndpointManager.a(), paramString);
  }
  
  public final HttpMethod getMethod()
  {
    return HttpMethod.GET;
  }
  
  public final String getPath()
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("edition", mEditionId);
    localBundle.putString("platform", "android");
    return auo.a(mEndpointManager.c, localBundle);
  }
  
  public final Object getRequestPayload()
  {
    return null;
  }
}

/* Location:
 * Qualified Name:     acv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */