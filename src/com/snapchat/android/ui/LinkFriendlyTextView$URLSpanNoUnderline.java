package com.snapchat.android.ui;

import android.text.TextPaint;
import android.text.style.URLSpan;
import chc;

class LinkFriendlyTextView$URLSpanNoUnderline
  extends URLSpan
{
  public LinkFriendlyTextView$URLSpanNoUnderline(String paramString)
  {
    super(paramString);
  }
  
  public void updateDrawState(@chc TextPaint paramTextPaint)
  {
    super.updateDrawState(paramTextPaint);
    paramTextPaint.setUnderlineText(false);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.LinkFriendlyTextView.URLSpanNoUnderline
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */