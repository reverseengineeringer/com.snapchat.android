package com.snapchat.android.util.debug;

import android.view.KeyEvent;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import bgp;

final class BugReportFragment$6
  implements TextView.OnEditorActionListener
{
  BugReportFragment$6(BugReportFragment paramBugReportFragment) {}
  
  public final boolean onEditorAction(TextView paramTextView, int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 5) || ((paramKeyEvent != null) && (paramKeyEvent.getKeyCode() == 66) && (paramKeyEvent.getAction() == 0)))
    {
      if (BugReportFragment.i(this$0))
      {
        BugReportFragment.h(this$0).requestFocus();
        return true;
      }
      BugReportFragment.c(this$0, true);
      new Thread(new Runnable()
      {
        public final void run()
        {
          bgp.a(300L);
          BugReportFragment.c(this$0, false);
        }
      }).start();
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.util.debug.BugReportFragment.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */