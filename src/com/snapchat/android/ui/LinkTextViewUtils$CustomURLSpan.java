package com.snapchat.android.ui;

import android.text.TextPaint;
import android.text.style.URLSpan;
import android.view.View;
import chc;

public class LinkTextViewUtils$CustomURLSpan
  extends URLSpan
{
  private final LinkTextViewUtils.a a;
  
  public LinkTextViewUtils$CustomURLSpan(String paramString, LinkTextViewUtils.a parama)
  {
    super(paramString);
    a = parama;
  }
  
  public void onClick(View paramView)
  {
    a.a();
  }
  
  public void updateDrawState(@chc TextPaint paramTextPaint)
  {
    super.updateDrawState(paramTextPaint);
    paramTextPaint.setUnderlineText(false);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.LinkTextViewUtils.CustomURLSpan
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */