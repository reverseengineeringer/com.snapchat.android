import android.os.AsyncTask;
import android.os.Build.VERSION;

public final class bxe
{
  public static void a(AsyncTask<Void, ?, ?> paramAsyncTask)
  {
    if (Build.VERSION.SDK_INT <= 12)
    {
      paramAsyncTask.execute(new Void[0]);
      return;
    }
    paramAsyncTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
  }
}

/* Location:
 * Qualified Name:     bxe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */