import android.database.Cursor;
import android.database.DataSetObservable;
import android.support.v4.view.PagerAdapter;
import com.snapchat.android.Timber;
import com.snapchat.android.discover.analytics.EditionPerformanceAnalytics;
import com.snapchat.android.discover.model.ChannelPage;
import com.snapchat.android.discover.model.DSnapPage;
import com.snapchat.android.discover.model.MediaState;
import com.snapchat.android.util.debug.ReleaseManager;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public final class aen
  extends aem
{
  public aen(@cgb ChannelPage paramChannelPage, @cgb String paramString, @cgb abr paramabr)
  {
    this(paramChannelPage, paramString, paramabr, apd.a(), adf.a(), adj.a(), ReleaseManager.a());
  }
  
  private aen(@cgb ChannelPage paramChannelPage, @cgb String paramString, @cgb abr paramabr, @cgb apd paramapd, @cgb adf paramadf, @cgb adj paramadj, @cgb ReleaseManager paramReleaseManager)
  {
    super(paramChannelPage, paramString, paramabr, paramapd, paramadf, paramadj, paramReleaseManager);
  }
  
  public final int a(int paramInt)
  {
    return paramInt - 1;
  }
  
  public final void a(@cgc Cursor arg1)
  {
    int j = 0;
    Object localObject1;
    int i;
    Object localObject3;
    String str;
    if (??? != null)
    {
      this.i = new ArrayList(???.getCount());
      this.j = new ArrayList(???.getCount());
      localObject1 = new HashSet(???.getCount());
      i = j;
      if (??? != null)
      {
        i = j;
        if (???.moveToFirst())
        {
          i = 0;
          do
          {
            localObject3 = b.a(???);
            if (localObject3 != null) {
              break;
            }
            Timber.f("EditionCursorPagerAdapter", "Invalid DSnapPage found in the cursor adapter!", new Object[0]);
            j = i;
            i = j;
          } while (???.moveToNext());
          i = j;
        }
      }
      h = true;
      localObject3 = a;
      str = d.e;
      j = ???.getCount();
      if (str == null) {}
    }
    for (;;)
    {
      synchronized (b)
      {
        adf.c.a locala = new adf.c.a();
        a = str;
        locala = locala.a((adf.c)b.get(str));
        e = i;
        d = (j + 1);
        f.clear();
        f.addAll((Collection)localObject1);
        localObject1 = locala.a();
        b.put(str, localObject1);
        f.d.a(this.j);
        mObservable.notifyChanged();
        return;
        j = i;
        if (((DSnapPage)localObject3).g()) {
          j = i + 1;
        }
        if ((((DSnapPage)localObject3).g()) && (((DSnapPage)localObject3).c().isError()))
        {
          Timber.e("EditionCursorPagerAdapter", "Skipping DSnap %s because it is an ad and was not loaded.", new Object[] { localObject3 });
          this.j.add(localObject3);
          break;
        }
        if ((((DSnapPage)localObject3).c() == MediaState.SUCCESS) && (((DSnapPage)localObject3).f() == 0))
        {
          Timber.f("EditionCursorPagerAdapter", "Skipping DSnap %s because it is successfully loaded but has no panels!", new Object[] { localObject3 });
          continue;
        }
        if (l == MediaState.CONTENT_ERROR)
        {
          Timber.f("EditionCursorPagerAdapter", "Skipping DSnap %s because there was a content error loading it!", new Object[] { localObject3 });
          continue;
        }
        this.i.add(localObject3);
        ((Set)localObject1).add(a);
      }
      this.i = new ArrayList();
    }
  }
  
  public final int b(int paramInt)
  {
    return paramInt + 1;
  }
  
  public final int getCount()
  {
    if (!h) {
      return 0;
    }
    return i.size() + 1;
  }
}

/* Location:
 * Qualified Name:     aen
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */