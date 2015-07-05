import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import org.json.JSONException;
import org.json.JSONObject;

class bro$g
  implements brn
{
  private JSONObject a = null;
  
  public bro$g(int paramInt)
  {
    NetworkInfo localNetworkInfo;
    if (cc)
    {
      a = new JSONObject();
      localNetworkInfo = ((ConnectivityManager)bro.b().getSystemService("connectivity")).getNetworkInfo(paramInt);
      if (localNetworkInfo == null) {}
    }
    for (;;)
    {
      try
      {
        a.put("available", localNetworkInfo.isAvailable());
        a.put("connected", localNetworkInfo.isConnected());
        if (!localNetworkInfo.isConnected()) {
          a.put("connecting", localNetworkInfo.isConnectedOrConnecting());
        }
        a.put("failover", localNetworkInfo.isFailover());
        if (paramInt != 0) {
          break label153;
        }
        paramInt = 1;
        if (paramInt == 0) {
          break label152;
        }
        a.put("roaming", localNetworkInfo.isRoaming());
        return;
      }
      catch (JSONException localJSONException)
      {
        a = null;
        btd.c();
      }
      a = null;
      return;
      label152:
      return;
      label153:
      paramInt = 0;
    }
  }
  
  public String a()
  {
    return null;
  }
  
  public JSONObject c()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     bro.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */