package com.snapchat.android.fragments;

import android.text.TextPaint;
import android.text.style.ClickableSpan;
import android.view.View;
import bbo;
import bev;
import com.snapchat.android.fragments.settings.WebFragment;
import com.squareup.otto.Bus;

final class ScAcceptTermsFragment$7
  extends ClickableSpan
{
  ScAcceptTermsFragment$7(ScAcceptTermsFragment paramScAcceptTermsFragment, String paramString) {}
  
  public final void onClick(View paramView)
  {
    paramView.invalidate();
    bbo.a().a(new bev(new WebFragment("https://www.snapchat.com/terms", a)));
  }
  
  public final void updateDrawState(TextPaint paramTextPaint)
  {
    super.updateDrawState(paramTextPaint);
    paramTextPaint.setUnderlineText(false);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.ScAcceptTermsFragment.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */