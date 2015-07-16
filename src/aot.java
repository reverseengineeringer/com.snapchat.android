import android.database.Cursor;
import android.graphics.Point;
import android.os.Bundle;
import android.provider.MediaStore.Images.Media;
import android.support.v4.app.LoaderManager.LoaderCallbacks;
import android.support.v4.content.CursorLoader;
import android.support.v4.content.Loader;
import com.snapchat.android.SnapchatApplication;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

public final class aot
  implements LoaderManager.LoaderCallbacks<Cursor>
{
  public static aot a;
  public final LinkedList<aos> b = new LinkedList();
  private final bhk c;
  private final Set<Long> d = new HashSet();
  private Point e;
  private Set<String> f = new HashSet();
  
  protected aot()
  {
    this(bhlmClock);
  }
  
  private aot(@chc bhk parambhk)
  {
    c = parambhk;
    e = null;
  }
  
  public static aot a()
  {
    try
    {
      if (a == null) {
        a = new aot();
      }
      aot localaot = a;
      return localaot;
    }
    finally {}
  }
  
  private void a(@chd List<Long> paramList)
  {
    synchronized (b)
    {
      if (b.isEmpty()) {
        return;
      }
      synchronized (b)
      {
        long l3 = System.currentTimeMillis();
        Iterator localIterator1 = b.descendingIterator();
        while (localIterator1.hasNext())
        {
          aos localaos = (aos)localIterator1.next();
          long l2 = c;
          long l4 = b;
          long l1 = l2;
          if (l2 == -1L) {
            l1 = Math.min(l3, 60000L + l4);
          }
          if (!paramList.isEmpty())
          {
            Iterator localIterator2 = paramList.iterator();
            while (localIterator2.hasNext())
            {
              Long localLong = (Long)localIterator2.next();
              if ((localLong.longValue() >= l4 + 1000L) && (localLong.longValue() <= 5000L + l1) && (!d.contains(localLong)))
              {
                d.add(localLong);
                localaos.a(localLong.longValue());
                b = l3;
                c = -1L;
              }
            }
          }
          if (l3 > 10000L + l1) {
            localIterator1.remove();
          }
        }
      }
    }
  }
  
  public final void a(aos paramaos)
  {
    synchronized (b)
    {
      b.add(paramaos);
      return;
    }
  }
  
  public final List<aos> b()
  {
    synchronized (b)
    {
      ArrayList localArrayList = new ArrayList(b);
      return localArrayList;
    }
  }
  
  public final Loader<Cursor> onCreateLoader(int paramInt, Bundle paramBundle)
  {
    return new CursorLoader(SnapchatApplication.b(), MediaStore.Images.Media.EXTERNAL_CONTENT_URI, new String[] { "datetaken", "_display_name", "width", "height" }, "datetaken DESC LIMIT 5");
  }
  
  public final void onLoaderReset(Loader<Cursor> paramLoader) {}
}

/* Location:
 * Qualified Name:     aot
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */