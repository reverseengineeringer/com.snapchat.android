import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.AsyncTask;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.gcm.GoogleCloudMessaging;
import com.snapchat.android.Timber;
import com.snapchat.android.util.debug.ScApplicationInfo;
import java.io.IOException;
import java.sql.Timestamp;

public class alz
{
  private Context a;
  private String b;
  
  public alz(Context paramContext)
  {
    a = paramContext.getApplicationContext();
  }
  
  public static void a(Context paramContext, String paramString)
  {
    SharedPreferences localSharedPreferences = paramContext.getSharedPreferences(alz.class.getSimpleName(), 0);
    int i = ScApplicationInfo.c(paramContext);
    Timber.a("NotificationRegistrar", "Saving regId on app version " + i, new Object[0]);
    paramContext = localSharedPreferences.edit();
    paramContext.putString("registrationId", paramString);
    paramContext.putInt("appVersion", i);
    long l = System.currentTimeMillis() + 604800000L;
    Timber.a("NotificationRegistrar", "Setting registration expiry time to " + new Timestamp(l), new Object[0]);
    paramContext.putLong("onServerExpirationTimeMs", l);
    paramContext.apply();
  }
  
  public final void a(Activity paramActivity)
  {
    Timber.c("NotificationRegistrar", "Checking reg on GCM", new Object[0]);
    int i = GooglePlayServicesUtil.isGooglePlayServicesAvailable(paramActivity);
    if (i != 0)
    {
      GooglePlayServicesUtil.getErrorDialog(i, paramActivity, 0).show();
      return;
    }
    new alz.a((byte)0).executeOnExecutor(auh.NETWORK_EXECUTOR, new Void[0]);
  }
  
  final class a
    extends AsyncTask<Void, Void, Void>
  {
    private a() {}
    
    private Void a()
    {
      try
      {
        GoogleCloudMessaging localGoogleCloudMessaging = GoogleCloudMessaging.getInstance(alz.a(alz.this));
        alz.a(alz.this, localGoogleCloudMessaging.register(new String[] { "191410808405" }));
        Timber.c("NotificationRegistrar", "Device registered, registration id = " + alz.b(alz.this), new Object[0]);
        alz.a(alz.a(alz.this), alz.b(alz.this));
        return null;
      }
      catch (IOException localIOException)
      {
        for (;;)
        {
          Timber.f("NotificationRegistrar", "Error :" + localIOException.getMessage(), new Object[0]);
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     alz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */