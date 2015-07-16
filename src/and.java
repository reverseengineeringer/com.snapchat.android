import android.content.Context;
import android.content.Intent;
import com.snapchat.android.api2.framework.HttpMethod;
import java.util.Map;

public abstract class and
  extends ui
  implements anh
{
  final Intent i;
  protected ur j;
  
  protected and(Intent paramIntent)
  {
    i = paramIntent;
    j = mProvider.a();
  }
  
  public final Intent a()
  {
    return i;
  }
  
  public void a(Context paramContext)
  {
    if (akr.H())
    {
      new StringBuilder("Do not send any network request for Snapkidz ").append(getUrl());
      return;
    }
    paramContext = getUrl();
    HttpMethod localHttpMethod = getMethod();
    bgk localbgk = getResponseBuffer();
    Object localObject = getRequestPayload();
    Map localMap = getHeaders(localObject);
    onResult(j.a(paramContext, localHttpMethod, localMap, localbgk, localObject));
  }
  
  public void b() {}
}

/* Location:
 * Qualified Name:     and
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */