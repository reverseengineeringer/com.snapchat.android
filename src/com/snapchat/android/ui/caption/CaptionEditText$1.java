package com.snapchat.android.ui.caption;

import android.view.KeyEvent;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;

final class CaptionEditText$1
  implements TextView.OnEditorActionListener
{
  CaptionEditText$1(CaptionEditText paramCaptionEditText) {}
  
  public final boolean onEditorAction(TextView paramTextView, int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 0) || (paramInt == 6)) {
      a.b(true);
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.caption.CaptionEditText.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */