import android.database.DataSetObservable;
import android.support.v4.view.PagerAdapter;
import com.snapchat.android.discover.analytics.EditionPerformanceAnalytics;
import com.snapchat.android.discover.model.ChannelPage;
import com.snapchat.android.discover.model.DSnapPage;
import com.snapchat.android.discover.model.MediaState;
import com.snapchat.android.util.debug.ReleaseManager;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class afn
  extends afm
{
  public afn(@chc ChannelPage paramChannelPage, @chc String paramString, @chc acr paramacr)
  {
    this(paramChannelPage, paramString, paramacr, apz.a(), aef.a(), aej.a(), ReleaseManager.a());
  }
  
  private afn(@chc ChannelPage paramChannelPage, @chc String paramString, @chc acr paramacr, @chc apz paramapz, @chc aef paramaef, @chc aej paramaej, @chc ReleaseManager paramReleaseManager)
  {
    super(paramChannelPage, paramString, paramacr, paramapz, paramaef, paramaej, paramReleaseManager);
  }
  
  public final int a(int paramInt)
  {
    return paramInt - 1;
  }
  
  public final void a(@chc List<DSnapPage> arg1)
  {
    this.i.clear();
    this.j.clear();
    Object localObject1 = new HashSet(???.size());
    int k = 0;
    int i = 0;
    if (k < ???.size())
    {
      localObject3 = (DSnapPage)???.get(k);
      j = i;
      if (localObject3 != null)
      {
        j = i;
        if (((DSnapPage)localObject3).g()) {
          j = i + 1;
        }
        if ((!((DSnapPage)localObject3).g()) || (!((DSnapPage)localObject3).c().isError())) {
          break label125;
        }
      }
      for (;;)
      {
        this.j.add(localObject3);
        k += 1;
        i = j;
        break;
        label125:
        if (((((DSnapPage)localObject3).c() != MediaState.SUCCESS) || (((DSnapPage)localObject3).f() != 0)) && (l != MediaState.CONTENT_ERROR))
        {
          this.i.add(localObject3);
          ((Set)localObject1).add(a);
        }
      }
    }
    h = true;
    Object localObject3 = a;
    String str = d.e;
    int j = this.i.size();
    if (str != null) {}
    synchronized (b)
    {
      aef.c.a locala = new aef.c.a();
      a = str;
      locala = locala.a((aef.c)b.get(str));
      e = i;
      d = (j + 1);
      f.clear();
      f.addAll((Collection)localObject1);
      localObject1 = locala.a();
      b.put(str, localObject1);
      f.d.a(this.j);
      mObservable.notifyChanged();
      return;
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
 * Qualified Name:     afn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */