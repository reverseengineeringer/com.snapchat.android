import android.content.Context;
import android.content.SharedPreferences;
import android.os.AsyncTask;
import android.os.Build.VERSION;
import android.provider.Settings.Secure;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.lang.ref.WeakReference;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class bwx
  extends AsyncTask<Void, String, JSONArray>
{
  protected String a = null;
  protected String b = null;
  public Context c = null;
  protected Boolean d = Boolean.valueOf(false);
  protected bwo e;
  private long f = 0L;
  
  public bwx(WeakReference<? extends Context> paramWeakReference, String paramString1, String paramString2)
  {
    b = paramString2;
    a = paramString1;
    e = null;
    if (paramWeakReference != null) {}
    for (paramWeakReference = (Context)paramWeakReference.get();; paramWeakReference = null)
    {
      if (paramWeakReference != null)
      {
        c = paramWeakReference.getApplicationContext();
        if (bwk.a(paramWeakReference)) {
          break label92;
        }
      }
      label92:
      for (long l = 0L;; l = paramWeakReference.getSharedPreferences("HockeyApp", 0).getLong("usageTime" + bwa.b, 0L) / 1000L)
      {
        f = l;
        bwa.a(paramWeakReference);
        return;
      }
    }
  }
  
  private static String a(InputStream paramInputStream)
  {
    BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader(paramInputStream), 1024);
    StringBuilder localStringBuilder = new StringBuilder();
    try
    {
      for (;;)
      {
        String str = localBufferedReader.readLine();
        if (str == null) {
          break;
        }
        localStringBuilder.append(str + "\n");
      }
      try
      {
        paramInputStream.close();
        throw ((Throwable)localObject);
      }
      catch (IOException paramInputStream)
      {
        for (;;)
        {
          paramInputStream.printStackTrace();
        }
      }
    }
    catch (IOException localIOException)
    {
      localIOException = localIOException;
      localIOException.printStackTrace();
      try
      {
        paramInputStream.close();
        for (;;)
        {
          return localStringBuilder.toString();
          try
          {
            paramInputStream.close();
          }
          catch (IOException paramInputStream)
          {
            paramInputStream.printStackTrace();
          }
        }
      }
      catch (IOException paramInputStream)
      {
        for (;;)
        {
          paramInputStream.printStackTrace();
        }
      }
    }
    finally {}
  }
  
  private boolean a(JSONArray paramJSONArray, int paramInt)
  {
    int i = 0;
    for (;;)
    {
      int j;
      int k;
      try
      {
        if (i < paramJSONArray.length())
        {
          JSONObject localJSONObject = paramJSONArray.getJSONObject(i);
          if (localJSONObject.getInt("version") > paramInt)
          {
            j = 1;
            if ((localJSONObject.getInt("version") == paramInt) && (bxn.a(c, localJSONObject.getLong("timestamp"))))
            {
              k = 1;
              String str3 = localJSONObject.getString("minimum_os_version");
              String str2 = Build.VERSION.RELEASE;
              if (str2 == null) {
                break label175;
              }
              str1 = str2;
              if (str2.equalsIgnoreCase("L")) {
                break label175;
              }
              if (bxn.a(str3, str1) > 0) {
                continue;
              }
              m = 1;
              break label182;
              if (m == 0) {
                continue;
              }
              if (localJSONObject.has("mandatory")) {
                d = Boolean.valueOf(localJSONObject.getBoolean("mandatory"));
              }
              return true;
            }
          }
          else
          {
            j = 0;
            continue;
          }
          k = 0;
          continue;
          int m = 0;
          break label182;
          i += 1;
        }
        else
        {
          return false;
        }
      }
      catch (JSONException paramJSONArray)
      {
        return false;
      }
      label175:
      String str1 = "5.0";
      continue;
      label182:
      if (j == 0) {
        if (k == 0) {}
      }
    }
  }
  
  private static String b(String paramString)
  {
    try
    {
      paramString = URLEncoder.encode(paramString, "UTF-8");
      return paramString;
    }
    catch (UnsupportedEncodingException paramString) {}
    return "";
  }
  
  private static JSONArray b(JSONArray paramJSONArray)
  {
    JSONArray localJSONArray = new JSONArray();
    int i = 0;
    for (;;)
    {
      if (i < Math.min(paramJSONArray.length(), 25)) {}
      try
      {
        localJSONArray.put(paramJSONArray.get(i));
        i += 1;
        continue;
        return localJSONArray;
      }
      catch (JSONException localJSONException)
      {
        for (;;) {}
      }
    }
  }
  
  private JSONArray c()
  {
    try
    {
      int i = Integer.parseInt(bwa.b);
      Object localObject = new JSONArray(bxm.a(c));
      if (a((JSONArray)localObject, i)) {
        return (JSONArray)localObject;
      }
      localObject = new URL(a("json")).openConnection();
      ((URLConnection)localObject).addRequestProperty("User-Agent", "HockeySDK/Android");
      if (Build.VERSION.SDK_INT <= 9) {
        ((URLConnection)localObject).setRequestProperty("connection", "close");
      }
      ((URLConnection)localObject).connect();
      localObject = new BufferedInputStream(((URLConnection)localObject).getInputStream());
      String str = a((InputStream)localObject);
      ((InputStream)localObject).close();
      localObject = new JSONArray(str);
      if (a((JSONArray)localObject, i))
      {
        localObject = b((JSONArray)localObject);
        return (JSONArray)localObject;
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }
  
  protected final String a(String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(a);
    localStringBuilder.append("api/2/apps/");
    if (b != null) {}
    for (String str = b;; str = c.getPackageName())
    {
      localStringBuilder.append(str);
      localStringBuilder.append("?format=" + paramString);
      if (Settings.Secure.getString(c.getContentResolver(), "android_id") != null) {
        localStringBuilder.append("&udid=" + b(Settings.Secure.getString(c.getContentResolver(), "android_id")));
      }
      localStringBuilder.append("&os=Android");
      localStringBuilder.append("&os_version=" + b(bwa.e));
      localStringBuilder.append("&device=" + b(bwa.f));
      localStringBuilder.append("&oem=" + b(bwa.g));
      localStringBuilder.append("&app_version=" + b(bwa.b));
      localStringBuilder.append("&sdk=" + b("HockeySDK"));
      localStringBuilder.append("&sdk_version=" + b("3.5.0"));
      localStringBuilder.append("&lang=" + b(Locale.getDefault().getLanguage()));
      localStringBuilder.append("&usage_time=" + f);
      return localStringBuilder.toString();
    }
  }
  
  public void a()
  {
    c = null;
  }
  
  protected void a(JSONArray paramJSONArray)
  {
    if ((paramJSONArray != null) && (e != null)) {
      a("apk");
    }
  }
  
  protected void b()
  {
    a = null;
    b = null;
  }
}

/* Location:
 * Qualified Name:     bwx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */