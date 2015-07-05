import android.os.AsyncTask;
import com.snapchat.android.SnapchatActivity;
import java.util.concurrent.Executor;

public final class bae
  implements blb
{
  public final void a(String paramString, final bla parambla)
  {
    paramString = new Runnable()
    {
      public final void run()
      {
        if (!SnapchatActivity.m()) {
          return;
        }
        az.a(parambla);
      }
    };
    AsyncTask.THREAD_POOL_EXECUTOR.execute(paramString);
  }
}

/* Location:
 * Qualified Name:     bae
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */