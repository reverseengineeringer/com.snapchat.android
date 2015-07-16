import android.app.Activity;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.os.SystemClock;
import android.support.v4.content.AsyncTaskLoader;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.EasyMetric.EasyMetricFactory;
import com.snapchat.android.database.DatabaseHelper;
import java.io.File;

public final class mz
  extends AsyncTaskLoader<akp>
{
  private final Activity a;
  private final nw b;
  
  public mz(Activity paramActivity, nw paramnw)
  {
    super(paramActivity);
    a = paramActivity;
    b = paramnw;
  }
  
  private akp a()
  {
    Object localObject = b;
    mUserLoadMetric = EasyMetric.EasyMetricFactory.b("USER_LOAD_TIME").b();
    mDidLoadFromDatabase = false;
    localObject = getContext();
    long l1 = SystemClock.elapsedRealtime();
    try
    {
      long l2 = new File(DatabaseHelper.a((Context)localObject).getWritableDatabase().getPath()).length();
      baz.c("UserLoader.loadInBackground DB SIZE " + l2 + " bytes");
      localObject = akp.a((Context)localObject);
      new StringBuilder("loadInBackground() Elapsed Time: ").append(SystemClock.elapsedRealtime() - l1);
      return (akp)localObject;
    }
    catch (SQLiteException localSQLiteException)
    {
      localSQLiteException.getMessage();
      atq.a(a);
    }
    return null;
  }
  
  protected final void onStartLoading()
  {
    forceLoad();
  }
  
  protected final void onStopLoading()
  {
    cancelLoad();
  }
}

/* Location:
 * Qualified Name:     mz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */