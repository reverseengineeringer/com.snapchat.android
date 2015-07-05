import android.app.Activity;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.os.SystemClock;
import android.support.v4.content.AsyncTaskLoader;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.EasyMetric.EasyMetricFactory;
import com.snapchat.android.database.DatabaseHelper;
import java.io.File;

public final class mi
  extends AsyncTaskLoader<ajv>
{
  private final Activity a;
  private final nf b;
  
  public mi(Activity paramActivity, nf paramnf)
  {
    super(paramActivity);
    a = paramActivity;
    b = paramnf;
  }
  
  private ajv a()
  {
    Object localObject = b;
    mUserLoadMetric = EasyMetric.EasyMetricFactory.b("USER_LOAD_TIME").b();
    mDidLoadFromDatabase = false;
    localObject = getContext();
    long l1 = SystemClock.elapsedRealtime();
    try
    {
      long l2 = new File(DatabaseHelper.a((Context)localObject).getWritableDatabase().getPath()).length();
      azz.c("UserLoader.loadInBackground DB SIZE " + l2 + " bytes");
      localObject = ajv.a((Context)localObject);
      Timber.c("UserLoader", "loadInBackground() Elapsed Time: " + (SystemClock.elapsedRealtime() - l1), new Object[0]);
      return (ajv)localObject;
    }
    catch (SQLiteException localSQLiteException)
    {
      Timber.f("UserLoader", "Error while opening database: %s", new Object[] { localSQLiteException.getMessage() });
      asr.a(a);
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
 * Qualified Name:     mi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */