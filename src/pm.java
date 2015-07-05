import com.snapchat.android.api2.framework.HttpMethod;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class pm
  extends tv
{
  private final String mUrlEndpoint;
  
  public pm(@cgb String paramString, @cgc Map<String, String> paramMap)
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
  
  public final void a(@cgb uc paramuc)
  {
    super.a(paramuc);
    ajx.q(paramuc.d());
  }
  
  public final Object b()
  {
    return null;
  }
  
  public final HttpMethod c()
  {
    return HttpMethod.GET;
  }
  
  public final String n_()
  {
    return mUrlEndpoint;
  }
}

/* Location:
 * Qualified Name:     pm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */