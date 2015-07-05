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
import di;
import java.util.Iterator;
import java.util.Locale;
import kj;
import lt;
import org.apache.commons.lang3.StringUtils;

final class SignupFragment$4
  implements View.OnFocusChangeListener
{
  SignupFragment$4(SignupFragment paramSignupFragment) {}
  
  public final void onFocusChange(View paramView, boolean paramBoolean)
  {
    Object localObject1 = null;
    if (paramBoolean)
    {
      SignupFragment.e(a);
      if ((SignupFragment.c(a)) && (!SignupFragment.d(a)))
      {
        paramView = SignupFragment.b(a).getText().toString();
        localObject1 = new kj();
        emailSuggestion = paramView;
        ScAnalyticsEventEngine.a((lt)localObject1);
        AnalyticsEvents.n();
      }
    }
    for (;;)
    {
      return;
      paramView = null;
      break;
      SignupFragment.a(a, false);
      paramView = SignupFragment.b(a).getText().toString().trim().toLowerCase(Locale.US);
      SignupFragment localSignupFragment = a;
      Object localObject2 = paramView.split("@");
      if (localObject2.length == 2)
      {
        String[] arrayOfString = localObject2[1].split("\\.");
        if (arrayOfString.length == 2)
        {
          String str = arrayOfString[0];
          paramView = (View)localObject1;
          if (!TextUtils.isEmpty(str))
          {
            if (!SignupFragment.a.contains(str)) {
              break label370;
            }
            paramView = (View)localObject1;
          }
          while (paramView != null)
          {
            paramView = localObject2[0] + "@" + paramView + "." + arrayOfString[1];
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
            label370:
            Iterator localIterator = SignupFragment.a.iterator();
            do
            {
              paramView = (View)localObject1;
              if (!localIterator.hasNext()) {
                break;
              }
              paramView = (String)localIterator.next();
              i = StringUtils.getLevenshteinDistance(paramView, str);
            } while ((i > 2) || (i <= 0));
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