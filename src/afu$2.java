import android.view.View;
import android.view.View.OnClickListener;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.framework.ScAnalyticsEventEngine;
import com.snapchat.android.discover.model.server.DiscoverLinkStatusResult;
import com.snapchat.android.discover.model.server.DiscoverLinkStatusResult.LinkStatus;
import com.squareup.otto.Bus;

final class afu$2
  implements View.OnClickListener
{
  afu$2(afu paramafu) {}
  
  public final void onClick(View paramView)
  {
    String str1 = null;
    if (a.l != null) {
      a.l.a(a.a);
    }
    adl localadl = a.b;
    DiscoverLinkStatusResult localDiscoverLinkStatusResult = a.j;
    boolean bool = a.a.mLinkToLongform;
    String str3 = afu.a(a);
    paramView = mLinkStatus;
    if (paramView == DiscoverLinkStatusResult.LinkStatus.FAILED)
    {
      Timber.e("DiscoverDeepLinkController", "Trying to go back to Discover when linking failed!", new Object[0]);
      return;
    }
    String str2;
    if ((mAdType == 0) && ((paramView == DiscoverLinkStatusResult.LinkStatus.ARCHIVED) || (paramView == DiscoverLinkStatusResult.LinkStatus.LIVE)))
    {
      str2 = mDSnapId;
      str1 = mEditionId;
    }
    for (;;)
    {
      if (str2 == null) {
        bool = false;
      }
      Timber.a("DiscoverDeepLinkController", "DISCOVER-LINK: Going to Discover! Publisher: %s Edition: %s DSnap: %s", new Object[] { mPublisherInternationalName, str1, str2 });
      if (str2 != null) {
        if (bool) {
          paramView = ib.LONG_FORM;
        }
      }
      for (;;)
      {
        String str4 = mEditionId;
        String str5 = mDSnapId;
        he localhe = new he();
        if (str3 != null) {
          publisherId = str3;
        }
        if (str5 != null) {
          dsnapId = str5;
        }
        editionId = str4;
        pageSection = paramView;
        ScAnalyticsEventEngine.a(localhe);
        b.a(new aez(mPublisherInternationalName, str1, str2, bool));
        return;
        paramView = ib.TOP_SNAP;
        continue;
        if (str3 != null) {
          paramView = ib.SPLASH;
        } else {
          paramView = ib.HOME;
        }
      }
      str2 = null;
    }
  }
}

/* Location:
 * Qualified Name:     afu.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */