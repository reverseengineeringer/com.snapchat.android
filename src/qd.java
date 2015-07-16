import com.snapchat.android.api2.framework.HttpMethod;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class qd
  extends ul
{
  private final String mUrlEndpoint;
  
  public qd(@chc String paramString, @chd Map<String, String> paramMap)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    paramMap = paramMap.entrySet().iterator();
    while (paramMap.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramMap.next();
      localStringBuilder.append("&" + (String)localEntry.getKey() + "=" + (String)localEntry.getValue());
    }
    mUrlEndpoint = (paramString + localStringBuilder.toString());
  }
  
  public final HttpMethod getMethod()
  {
    return HttpMethod.GET;
  }
  
  public final Object getRequestPayload()
  {
    return null;
  }
  
  public final String getUrl()
  {
    return mUrlEndpoint;
  }
  
  public final void onResult(@chc us paramus)
  {
    super.onResult(paramus);
    akr.p(paramus.d());
  }
}

/* Location:
 * Qualified Name:     qd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */