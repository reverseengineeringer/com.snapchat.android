import android.content.Context;
import android.database.Cursor;
import android.support.v4.content.AsyncTaskLoader;
import com.snapchat.android.database.table.DbTable;
import com.snapchat.android.database.vtable.DbVirtualTable;

public final class acj
  extends AsyncTaskLoader<Cursor>
{
  private Cursor a;
  private final DbTable b;
  private final DbVirtualTable c;
  
  public acj(Context paramContext, DbTable paramDbTable)
  {
    super(paramContext);
    b = paramDbTable;
    c = null;
  }
  
  public acj(Context paramContext, DbVirtualTable paramDbVirtualTable)
  {
    super(paramContext);
    b = null;
    c = paramDbVirtualTable;
  }
  
  private void a(Cursor paramCursor)
  {
    if (isReset()) {
      if (paramCursor != null) {
        paramCursor.close();
      }
    }
    Cursor localCursor;
    do
    {
      return;
      localCursor = a;
      a = paramCursor;
      if (isStarted()) {
        super.deliverResult(paramCursor);
      }
    } while ((localCursor == null) || (localCursor == paramCursor) || (localCursor.isClosed()));
    localCursor.close();
  }
  
  protected final void onReset()
  {
    super.onReset();
    onStopLoading();
    if ((a != null) && (!a.isClosed())) {
      a.close();
    }
    a = null;
  }
  
  protected final void onStartLoading()
  {
    if (a != null) {
      a(a);
    }
    if ((takeContentChanged()) || (a == null)) {
      forceLoad();
    }
  }
  
  protected final void onStopLoading()
  {
    cancelLoad();
  }
}

/* Location:
 * Qualified Name:     acj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */