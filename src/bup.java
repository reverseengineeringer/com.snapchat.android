import android.content.Context;
import java.io.File;
import java.io.IOException;
import org.json.JSONException;
import org.json.JSONObject;

public final class bup
{
  public boolean a = false;
  public boolean b = false;
  public boolean c = false;
  public int d = 10;
  
  public bup(Context paramContext)
  {
    if (a(paramContext).exists()) {
      c = true;
    }
  }
  
  public bup(JSONObject paramJSONObject)
  {
    if (!paramJSONObject.has("net")) {
      return;
    }
    try
    {
      paramJSONObject = paramJSONObject.getJSONObject("net");
      a = paramJSONObject.optBoolean("enabled", false);
      b = paramJSONObject.optBoolean("persist", false);
      c = paramJSONObject.optBoolean("kill", false);
      d = paramJSONObject.optInt("interval", 10);
      return;
    }
    catch (JSONException paramJSONObject) {}
  }
  
  public static File a(Context paramContext)
  {
    return new File(paramContext.getFilesDir().getAbsolutePath() + "/.crittercism.apm.disabled.");
  }
  
  public static void b(Context paramContext)
  {
    try
    {
      a(paramContext).createNewFile();
      return;
    }
    catch (IOException paramContext)
    {
      new StringBuilder("Unable to kill APM: ").append(paramContext.getMessage());
      bue.e();
    }
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (paramObject == null) {
        return false;
      }
      if (!(paramObject instanceof bup)) {
        return false;
      }
      paramObject = (bup)paramObject;
      if (c != c) {
        return false;
      }
      if (a != a) {
        return false;
      }
      if (b != b) {
        return false;
      }
    } while (d == d);
    return false;
  }
  
  public final int hashCode()
  {
    int k = 1231;
    int i;
    int j;
    if (c)
    {
      i = 1231;
      if (!a) {
        break label63;
      }
      j = 1231;
      label26:
      if (!b) {
        break label70;
      }
    }
    for (;;)
    {
      return ((j + (i + 31) * 31) * 31 + k) * 31 + d;
      i = 1237;
      break;
      label63:
      j = 1237;
      break label26;
      label70:
      k = 1237;
    }
  }
  
  public final String toString()
  {
    return "OptmzConfiguration [\nisSendTaskEnabled=" + a + "\n, shouldPersist=" + b + "\n, isKilled=" + c + "\n, statisticsSendInterval=" + d + "]";
  }
}

/* Location:
 * Qualified Name:     bup
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */