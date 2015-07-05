package com.snapchat.android.fragments;

import android.text.TextPaint;
import android.text.style.ClickableSpan;
import android.view.View;
import ban;
import bdw;
import com.snapchat.android.fragments.settings.WebFragment;
import com.squareup.otto.Bus;

final class ScAcceptTermsFragment$6
  extends ClickableSpan
{
  ScAcceptTermsFragment$6(ScAcceptTermsFragment paramScAcceptTermsFragment, String paramString) {}
  
  public final void onClick(View paramView)
  {
    paramView.invalidate();
    ban.a().a(new bdw(new WebFragment("https://www.snapchat.com/privacy", a)));
  }
  
  public final void updateDrawState(TextPaint paramTextPaint)
  {
    super.updateDrawState(paramTextPaint);
    paramTextPaint.setUnderlineText(false);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.ScAcceptTermsFragment.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */