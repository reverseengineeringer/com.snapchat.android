import android.database.Cursor;
import android.database.DataSetObservable;
import android.support.v4.view.PagerAdapter;
import com.snapchat.android.discover.analytics.EditionPerformanceAnalytics;
import com.snapchat.android.discover.model.ChannelPage;
import com.snapchat.android.util.debug.ReleaseManager;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public final class aek
  extends aem
{
  public aek(@cgb ChannelPage paramChannelPage, @cgb String paramString, @cgb abr paramabr)
  {
    this(paramChannelPage, paramString, paramabr, apd.a(), adf.a(), adj.a(), ReleaseManager.a());
  }
  
  private aek(@cgb ChannelPage paramChannelPage, @cgb String paramString, @cgb abr paramabr, @cgb apd paramapd, @cgb adf paramadf, @cgb adj paramadj, @cgb ReleaseManager paramReleaseManager)
  {
    super(paramChannelPage, paramString, paramabr, paramapd, paramadf, paramadj, paramReleaseManager);
  }
  
  public final int a(int paramInt)
  {
    return paramInt;
  }
  
  public final void a(@cgc Cursor paramCursor)
  {
    if (paramCursor != null)
    {
      i = new ArrayList(paramCursor.getCount());
      if ((paramCursor != null) && (paramCursor.moveToFirst())) {
        do
        {
          localObject = b.a(paramCursor);
          i.add(localObject);
        } while (paramCursor.moveToNext());
      }
      paramCursor = a;
      Object localObject = e;
      ArrayList localArrayList1 = i;
      ArrayList localArrayList2 = new ArrayList(localArrayList1.size());
      localArrayList2.addAll(localArrayList1);
      e.put(localObject, localArrayList2);
      f.d.a(i);
    }
    for (;;)
    {
      mObservable.notifyChanged();
      return;
      i = new ArrayList();
    }
  }
  
  public final int b(int paramInt)
  {
    return paramInt;
  }
  
  public final int getCount()
  {
    return i.size();
  }
}

/* Location:
 * Qualified Name:     aek
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */