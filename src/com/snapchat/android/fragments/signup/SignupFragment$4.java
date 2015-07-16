package com.snapchat.android.fragments.signup;

import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.view.View.OnFocusChangeListener;
import android.widget.EditText;
import android.widget.TextView;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.analytics.framework.ScAnalyticsEventEngine;
import dr;
import java.util.Iterator;
import java.util.Locale;
import lb;
import org.apache.commons.lang3.StringUtils;

final class SignupFragment$4
  implements View.OnFocusChangeListener
{
  SignupFragment$4(SignupFragment paramSignupFragment) {}
  
  public final void onFocusChange(View paramView, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      SignupFragment.c(a);
      ScAnalyticsEventEngine.a(new lb());
      AnalyticsEvents.n();
    }
    for (;;)
    {
      return;
      SignupFragment.a(a, false);
      paramView = SignupFragment.b(a).getText().toString().trim().toLowerCase(Locale.US);
      SignupFragment localSignupFragment = a;
      Object localObject1 = paramView.split("@");
      if (localObject1.length == 2)
      {
        Object localObject2 = localObject1[1].split("\\.");
        if (localObject2.length == 2)
        {
          CharSequence localCharSequence = localObject2[0];
          if ((TextUtils.isEmpty(localCharSequence)) || (SignupFragment.a.contains(localCharSequence))) {
            paramView = null;
          }
          while (paramView != null)
          {
            paramView = localObject1[0] + "@" + paramView + "." + localObject2[1];
            localObject1 = new SpannableStringBuilder();
            localObject2 = localSignupFragment.getString(2131493118, new Object[] { paramView });
            int i = ((String)localObject2).indexOf(paramView);
            ((SpannableStringBuilder)localObject1).append((CharSequence)localObject2);
            ((SpannableStringBuilder)localObject1).setSpan(new ForegroundColorSpan(-16776961), i, paramView.length() + i, 0);
            ((SpannableStringBuilder)localObject1).setSpan(new ForegroundColorSpan(-16777216), 0, i, 0);
            ((SpannableStringBuilder)localObject1).setSpan(new ForegroundColorSpan(-16777216), i + paramView.length(), ((String)localObject2).length(), 0);
            c.setText((CharSequence)localObject1);
            c.setVisibility(0);
            localSignupFragment.a(false);
            c.setLinksClickable(true);
            b = paramView;
            return;
            Iterator localIterator = SignupFragment.a.iterator();
            for (;;)
            {
              if (localIterator.hasNext())
              {
                paramView = (String)localIterator.next();
                i = StringUtils.getLevenshteinDistance(paramView, localCharSequence);
                if ((i <= 2) && (i > 0)) {
                  break;
                }
              }
            }
            paramView = null;
          }
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.signup.SignupFragment.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */