package com.snapchat.android.ui;

import android.content.Context;
import android.text.Html;
import android.text.Layout;
import android.text.Selection;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.style.ClickableSpan;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.TextView;

public class FixTouchConsumeTextView
  extends TextView
{
  public FixTouchConsumeTextView(Context paramContext)
  {
    super(paramContext);
  }
  
  public FixTouchConsumeTextView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public FixTouchConsumeTextView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    boolean bool = super.onTouchEvent(paramMotionEvent);
    if ((getText() instanceof Spannable))
    {
      Spannable localSpannable = (Spannable)getText();
      int i = paramMotionEvent.getAction();
      if ((i == 1) || (i == 0))
      {
        Object localObject = getLayout();
        if (localObject == null) {}
        int j;
        for (paramMotionEvent = null;; paramMotionEvent = (ClickableSpan[])localSpannable.getSpans(j, j, ClickableSpan.class))
        {
          localObject = paramMotionEvent;
          if (paramMotionEvent == null) {
            localObject = new ClickableSpan[0];
          }
          if (localObject.length == 0) {
            break;
          }
          if (i == 0) {
            Selection.setSelection(localSpannable, localSpannable.getSpanStart(localObject[0]), localSpannable.getSpanEnd(localObject[0]));
          }
          return true;
          j = (int)paramMotionEvent.getX();
          int k = getTotalPaddingLeft();
          int m = getScrollX();
          j = ((Layout)localObject).getOffsetForHorizontal(((Layout)localObject).getLineForVertical((int)paramMotionEvent.getY() - getTotalPaddingTop() + getScrollY()), j - k + m);
        }
        Selection.removeSelection(localSpannable);
        return false;
      }
    }
    return bool;
  }
  
  public void setTextViewHTML(String paramString)
  {
    setText(new SpannableStringBuilder(Html.fromHtml(paramString)));
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.FixTouchConsumeTextView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */