package com.snapchat.android.fragments;

import android.text.TextPaint;
import android.text.style.ClickableSpan;
import android.view.View;

final class ScAcceptTermsFragment$9
  extends ClickableSpan
{
  ScAcceptTermsFragment$9(ScAcceptTermsFragment paramScAcceptTermsFragment) {}
  
  public final void onClick(View paramView)
  {
    paramView.invalidate();
    ScAcceptTermsFragment.e(a);
  }
  
  public final void updateDrawState(TextPaint paramTextPaint)
  {
    super.updateDrawState(paramTextPaint);
    paramTextPaint.setUnderlineText(false);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.ScAcceptTermsFragment.9
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */