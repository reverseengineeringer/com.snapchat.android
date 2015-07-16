import android.os.AsyncTask;
import com.google.android.gms.gcm.GoogleCloudMessaging;
import java.io.IOException;

final class amw$a
  extends AsyncTask<Void, Void, Void>
{
  private amw$a(amw paramamw) {}
  
  private Void a()
  {
    try
    {
      GoogleCloudMessaging localGoogleCloudMessaging = GoogleCloudMessaging.getInstance(amw.a(a));
      amw.a(a, localGoogleCloudMessaging.register(new String[] { "191410808405" }));
      new StringBuilder("Device registered, registration id = ").append(amw.b(a));
      amw.a(amw.a(a), amw.b(a));
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

/* Location:
 * Qualified Name:     amw.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */