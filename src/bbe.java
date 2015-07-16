import android.os.AsyncTask;
import com.snapchat.android.SnapchatActivity;
import java.util.concurrent.Executor;

public final class bbe
  implements bmc
{
  public final void a(String paramString, final bmb parambmb)
  {
    paramString = new Runnable()
    {
      public final void run()
      {
        if (!SnapchatActivity.m()) {
          return;
        }
        az.a(parambmb);
      }
    };
    AsyncTask.THREAD_POOL_EXECUTOR.execute(paramString);
  }
}

/* Location:
 * Qualified Name:     bbe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */