import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.CheckBox;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.analytics.AnalyticsEvents.AddFriendSourceType;
import com.snapchat.android.analytics.AnalyticsEvents.AnalyticsContext;
import com.snapchat.android.analytics.ProfileEventAnalytics.ProfilePageMetricParams;
import com.snapchat.android.analytics.ProfileEventAnalytics.ProfilePageMetrics;
import com.snapchat.android.analytics.RegistrationAnalytics;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.ScAnalyticsEventEngine;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.FriendAction;
import java.util.Set;

final class agf$2
  implements View.OnClickListener
{
  agf$2(agf paramagf, Friend paramFriend, Set paramSet, aga.a parama) {}
  
  public final void onClick(View paramView)
  {
    paramView = d.H.d();
    if ((paramView != null) && (!d.H.k))
    {
      d.a(d.H.b(), paramView.length(), d.H.c());
      d.H.k = true;
    }
    d.l.setChecked(true);
    paramView = a.mPhoneNumber;
    String str = d.J.getString(2131493207, new Object[] { akr.l() });
    awc.a(d.J, paramView, str);
    if (!b.contains(paramView))
    {
      b.add(paramView);
      AnalyticsEvents.a(FriendAction.INVITE, c.a().name(), a, AnalyticsEvents.AddFriendSourceType.CONTACTS, c.r_());
      paramView = a.a();
      str = a.mPhoneNumber;
      AnalyticsEvents.AnalyticsContext localAnalyticsContext = c.a();
      switch (com.snapchat.android.analytics.ProfileEventAnalytics.1.$SwitchMap$com$snapchat$android$analytics$AnalyticsEvents$AnalyticsContext[localAnalyticsContext.ordinal()])
      {
      }
    }
    for (;;)
    {
      new EasyMetric(ProfileEventAnalytics.ProfilePageMetrics.PROFILE_CONTACT_ADD_CLICK.name()).a(ProfileEventAnalytics.ProfilePageMetricParams.CONTACT_NAME.nameInLowerCase(), paramView).a(ProfileEventAnalytics.ProfilePageMetricParams.CONTACT_INFO.nameInLowerCase(), str).a(ProfileEventAnalytics.ProfilePageMetricParams.IDENTITY_PROFILE_PAGE.nameInLowerCase(), aug.a(AnalyticsEvents.AnalyticsContext.PROFILE_MY_CONTACTS_PAGE)).e();
      if (RegistrationAnalytics.b()) {
        AnalyticsEvents.i(a.mPhoneNumber);
      }
      return;
      ScAnalyticsEventEngine.a(new ji());
      continue;
      ScAnalyticsEventEngine.a(new ir());
    }
  }
}

/* Location:
 * Qualified Name:     agf.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */