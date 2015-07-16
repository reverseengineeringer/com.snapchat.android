package com.snapchat.android.ui;

import android.content.Context;
import android.content.res.Resources;
import android.text.Spannable;
import android.text.TextPaint;
import android.text.method.LinkMovementMethod;
import android.text.style.URLSpan;
import android.util.AttributeSet;
import android.widget.TextView;
import chc;

public class LinkFriendlyTextView
  extends TextView
{
  public LinkFriendlyTextView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    setMovementMethod(LinkMovementMethod.getInstance());
    setLinkTextColor(paramContext.getResources().getColor(2131230772));
    a(this);
  }
  
  private static void a(@chc TextView paramTextView)
  {
    Spannable localSpannable = (Spannable)paramTextView.getText();
    if (localSpannable == null) {
      throw new NullPointerException();
    }
    URLSpan[] arrayOfURLSpan = (URLSpan[])localSpannable.getSpans(0, localSpannable.length(), URLSpan.class);
    int j = arrayOfURLSpan.length;
    int i = 0;
    while (i < j)
    {
      URLSpan localURLSpan = arrayOfURLSpan[i];
      int k = localSpannable.getSpanStart(localURLSpan);
      int m = localSpannable.getSpanEnd(localURLSpan);
      localSpannable.removeSpan(localURLSpan);
      localSpannable.setSpan(new URLSpanNoUnderline(localURLSpan.getURL()), k, m, 0);
      i += 1;
    }
    paramTextView.setText(localSpannable);
  }
  
  static class URLSpanNoUnderline
    extends URLSpan
  {
    public URLSpanNoUnderline(String paramString)
    {
      super();
    }
    
    public void updateDrawState(@chc TextPaint paramTextPaint)
    {
      super.updateDrawState(paramTextPaint);
      paramTextPaint.setUnderlineText(false);
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.LinkFriendlyTextView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */