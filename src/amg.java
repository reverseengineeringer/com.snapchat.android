import android.content.Context;
import android.content.Intent;
import com.snapchat.android.Timber;

public abstract class amg
  extends ts
  implements amk
{
  final Intent i;
  protected ub j;
  
  protected amg(Intent paramIntent)
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
    if (ajx.H())
    {
      Timber.f("HyperRequestOperation", "Do not send any network request for Snapkidz " + n_(), new Object[0]);
      return;
    }
    a(j.a(n_(), c(), g(), a_(), b()));
  }
  
  public void f() {}
}

/* Location:
 * Qualified Name:     amg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */