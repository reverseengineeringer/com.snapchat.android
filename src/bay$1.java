import android.text.TextUtils;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.EasyMetric.EasyMetricFactory;
import java.util.Collections;
import java.util.List;

final class bay$1
  implements Runnable
{
  bay$1(bay parambay, String paramString1, String paramString2, String paramString3, List paramList) {}
  
  public final void run()
  {
    String str1 = val$startPage;
    String str2 = val$endPage;
    String str3 = val$direction;
    List localList = val$latencyList;
    bhp.b();
    boolean bool = TextUtils.equals(str3, "VERTICAL");
    if ((str1 != null) && (str2 != null) && (((!str1.equals(str2)) && (!bool)) || ((str1.equals(str2)) && (bool)))) {}
    for (int i = 1;; i = 0)
    {
      if ((i != 0) && (localList != null) && (!localList.isEmpty()))
      {
        Collections.sort(localList);
        long l1 = aux.b(localList);
        long l2 = aux.a(localList);
        long l3 = ((Long)localList.get(localList.size() - 1)).longValue();
        EasyMetric.EasyMetricFactory.b("SWIPE_LATENCY").a("start_page", str1).a("end_page", str2).a("mean", Long.valueOf(l1)).a("median", Long.valueOf(l2)).a("max", Long.valueOf(l3)).a("size", Integer.valueOf(localList.size())).a("is_vertical_scroll", Boolean.valueOf(bool)).b(false);
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     bay.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */