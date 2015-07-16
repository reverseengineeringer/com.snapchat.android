import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.AsyncTask;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.gcm.GoogleCloudMessaging;
import com.snapchat.android.util.debug.ScApplicationInfo;
import java.io.IOException;
import java.sql.Timestamp;

public class amw
{
  private Context a;
  private String b;
  
  public amw(Context paramContext)
  {
    a = paramContext.getApplicationContext();
  }
  
  public static void a(Context paramContext, String paramString)
  {
    SharedPreferences localSharedPreferences = paramContext.getSharedPreferences(amw.class.getSimpleName(), 0);
    int i = ScApplicationInfo.c(paramContext);
    paramContext = localSharedPreferences.edit();
    paramContext.putString("registrationId", paramString);
    paramContext.putInt("appVersion", i);
    long l = System.currentTimeMillis() + 604800000L;
    new StringBuilder("Setting registration expiry time to ").append(new Timestamp(l));
    paramContext.putLong("onServerExpirationTimeMs", l);
    paramContext.apply();
  }
  
  public final void a(Activity paramActivity)
  {
    int i = GooglePlayServicesUtil.isGooglePlayServicesAvailable(paramActivity);
    if (i != 0)
    {
      GooglePlayServicesUtil.getErrorDialog(i, paramActivity, 0).show();
      return;
    }
    new amw.a((byte)0).executeOnExecutor(avf.NETWORK_EXECUTOR, new Void[0]);
  }
  
  final class a
    extends AsyncTask<Void, Void, Void>
  {
    private a() {}
    
    private Void a()
    {
      try
      {
        GoogleCloudMessaging localGoogleCloudMessaging = GoogleCloudMessaging.getInstance(amw.a(amw.this));
        amw.a(amw.this, localGoogleCloudMessaging.register(new String[] { "191410808405" }));
        new StringBuilder("Device registered, registration id = ").append(amw.b(amw.this));
        amw.a(amw.a(amw.this), amw.b(amw.this));
        return null;
      }
      catch (IOException localIOException)
      {
        for (;;)
        {
          new StringBuilder("Error :").append(localIOException.getMessage());
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     amw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */