import android.os.AsyncTask;
import com.google.android.gms.gcm.GoogleCloudMessaging;
import com.snapchat.android.Timber;
import java.io.IOException;

final class alz$a
  extends AsyncTask<Void, Void, Void>
{
  private alz$a(alz paramalz) {}
  
  private Void a()
  {
    try
    {
      GoogleCloudMessaging localGoogleCloudMessaging = GoogleCloudMessaging.getInstance(alz.a(a));
      alz.a(a, localGoogleCloudMessaging.register(new String[] { "191410808405" }));
      Timber.c("NotificationRegistrar", "Device registered, registration id = " + alz.b(a), new Object[0]);
      alz.a(alz.a(a), alz.b(a));
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

/* Location:
 * Qualified Name:     alz.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */