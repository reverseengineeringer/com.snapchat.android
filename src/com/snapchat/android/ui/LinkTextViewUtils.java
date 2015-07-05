package com.snapchat.android.ui;

import android.text.TextPaint;
import android.text.style.URLSpan;
import android.view.View;
import cgb;

public final class LinkTextViewUtils
{
  public static class CustomURLSpan
    extends URLSpan
  {
    private final LinkTextViewUtils.a a;
    
    public CustomURLSpan(String paramString, LinkTextViewUtils.a parama)
    {
      super();
      a = parama;
    }
    
    public void onClick(View paramView)
    {
      a.a();
    }
    
    public void updateDrawState(@cgb TextPaint paramTextPaint)
    {
      super.updateDrawState(paramTextPaint);
      paramTextPaint.setUnderlineText(false);
    }
  }
  
  public static abstract interface a
  {
    public abstract void a();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.LinkTextViewUtils
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */