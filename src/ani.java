import android.content.Context;
import android.content.Intent;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;

public final class ani
  implements anh
{
  private final Intent a;
  private final String b;
  
  public ani(Intent paramIntent)
  {
    a = paramIntent;
    b = paramIntent.getStringExtra("url");
  }
  
  public final Intent a()
  {
    return a;
  }
  
  public final void a(Context paramContext)
  {
    paramContext = b;
    if (paramContext == null) {}
    try
    {
      throw new IllegalArgumentException();
    }
    catch (Exception paramContext) {}
    new DefaultHttpClient().execute(new HttpGet(paramContext));
    return;
  }
  
  public final void b() {}
}

/* Location:
 * Qualified Name:     ani
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */