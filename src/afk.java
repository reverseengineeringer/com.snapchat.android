import android.database.DataSetObservable;
import android.support.v4.view.PagerAdapter;
import com.snapchat.android.discover.analytics.EditionPerformanceAnalytics;
import com.snapchat.android.discover.model.ChannelPage;
import com.snapchat.android.discover.model.DSnapPage;
import com.snapchat.android.util.debug.ReleaseManager;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public final class afk
  extends afm
{
  public afk(@chc ChannelPage paramChannelPage, @chc String paramString, @chc acr paramacr)
  {
    this(paramChannelPage, paramString, paramacr, apz.a(), aef.a(), aej.a(), ReleaseManager.a());
  }
  
  private afk(@chc ChannelPage paramChannelPage, @chc String paramString, @chc acr paramacr, @chc apz paramapz, @chc aef paramaef, @chc aej paramaej, @chc ReleaseManager paramReleaseManager)
  {
    super(paramChannelPage, paramString, paramacr, paramapz, paramaef, paramaej, paramReleaseManager);
  }
  
  public final int a(int paramInt)
  {
    return paramInt;
  }
  
  public final void a(@chc List<DSnapPage> paramList)
  {
    i.clear();
    i.addAll(paramList);
    paramList = a;
    String str = e;
    List localList = i;
    ArrayList localArrayList = new ArrayList(localList.size());
    localArrayList.addAll(localList);
    e.put(str, localArrayList);
    f.d.a(i);
    mObservable.notifyChanged();
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
 * Qualified Name:     afk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */