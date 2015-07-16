import android.view.View;
import android.view.View.OnClickListener;
import com.snapchat.android.analytics.framework.ScAnalyticsEventEngine;
import com.snapchat.android.discover.model.server.DiscoverLinkStatusResult;
import com.snapchat.android.discover.model.server.DiscoverLinkStatusResult.LinkStatus;
import com.squareup.otto.Bus;

final class agu$2
  implements View.OnClickListener
{
  agu$2(agu paramagu) {}
  
  public final void onClick(View paramView)
  {
    String str1 = null;
    if (a.l != null) {
      a.l.a(a.a);
    }
    ael localael = a.b;
    DiscoverLinkStatusResult localDiscoverLinkStatusResult = a.j;
    boolean bool = a.a.mLinkToLongform;
    String str3 = agu.a(a);
    paramView = mLinkStatus;
    String str2;
    if (paramView != DiscoverLinkStatusResult.LinkStatus.FAILED)
    {
      if ((mAdType != 0) || ((paramView != DiscoverLinkStatusResult.LinkStatus.ARCHIVED) && (paramView != DiscoverLinkStatusResult.LinkStatus.LIVE))) {
        break label259;
      }
      str2 = mDSnapId;
      str1 = mEditionId;
    }
    for (;;)
    {
      if (str2 == null) {
        bool = false;
      }
      paramView = mPublisherInternationalName;
      if (str2 != null) {
        if (bool) {
          paramView = ik.LONG_FORM;
        }
      }
      for (;;)
      {
        String str4 = mEditionId;
        String str5 = mDSnapId;
        hn localhn = new hn();
        if (str3 != null) {
          publisherId = str3;
        }
        if (str5 != null) {
          dsnapId = str5;
        }
        editionId = str4;
        pageSection = paramView;
        ScAnalyticsEventEngine.a(localhn);
        b.a(new afz(mPublisherInternationalName, str1, str2, bool));
        return;
        paramView = ik.TOP_SNAP;
        continue;
        if (str3 != null) {
          paramView = ik.SPLASH;
        } else {
          paramView = ik.HOME;
        }
      }
      label259:
      str2 = null;
    }
  }
}

/* Location:
 * Qualified Name:     agu.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */