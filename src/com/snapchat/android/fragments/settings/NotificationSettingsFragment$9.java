package com.snapchat.android.fragments.settings;

import akr;
import android.view.View;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import com.snapchat.android.analytics.framework.EasyMetric;

final class NotificationSettingsFragment$9
  implements CompoundButton.OnCheckedChangeListener
{
  NotificationSettingsFragment$9(NotificationSettingsFragment paramNotificationSettingsFragment, CheckBox paramCheckBox1, CheckBox paramCheckBox2, CheckBox paramCheckBox3, CheckBox paramCheckBox4, View paramView1, View paramView2, View paramView3, View paramView4, View paramView5, View paramView6, View paramView7, View paramView8) {}
  
  public final void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    NotificationSettingsFragment.a(m);
    akr.D(paramBoolean);
    a.setEnabled(paramBoolean);
    b.setEnabled(paramBoolean);
    c.setEnabled(paramBoolean);
    d.setEnabled(paramBoolean);
    e.setEnabled(paramBoolean);
    f.setEnabled(paramBoolean);
    g.setEnabled(paramBoolean);
    h.setEnabled(paramBoolean);
    i.setEnabled(paramBoolean);
    j.setEnabled(paramBoolean);
    k.setEnabled(paramBoolean);
    l.setEnabled(paramBoolean);
    StringBuilder localStringBuilder = new StringBuilder("NOTIFICATIONS_");
    if (paramBoolean) {}
    for (paramCompoundButton = "ENABLED";; paramCompoundButton = "DISABLED")
    {
      new EasyMetric(paramCompoundButton).e();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.NotificationSettingsFragment.9
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */