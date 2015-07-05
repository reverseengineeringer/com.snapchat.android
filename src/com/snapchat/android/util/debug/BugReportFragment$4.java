package com.snapchat.android.util.debug;

import android.text.Editable;
import android.view.KeyEvent;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;

final class BugReportFragment$4
  implements TextView.OnEditorActionListener
{
  BugReportFragment$4(BugReportFragment paramBugReportFragment) {}
  
  public final boolean onEditorAction(TextView paramTextView, int paramInt, KeyEvent paramKeyEvent)
  {
    paramTextView = BugReportFragment.h(this$0).getText();
    int i = paramTextView.toString().split("\n").length;
    if ((paramInt == 5) || ((paramKeyEvent != null) && (paramKeyEvent.getKeyCode() == 66) && (paramKeyEvent.getAction() == 0)))
    {
      paramKeyEvent = "\n" + (i + 1) + ". ";
      BugReportFragment.h(this$0).setText(paramTextView + paramKeyEvent);
      BugReportFragment.h(this$0).setSelection(paramTextView.length() + paramKeyEvent.length());
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.util.debug.BugReportFragment.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */