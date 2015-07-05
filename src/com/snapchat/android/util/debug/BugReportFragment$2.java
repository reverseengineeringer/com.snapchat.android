package com.snapchat.android.util.debug;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.Button;

final class BugReportFragment$2
  implements DialogInterface.OnClickListener
{
  BugReportFragment$2(BugReportFragment paramBugReportFragment) {}
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    BugReportFragment.a(this$0, BugReportFragment.i()[paramInt].toString());
    BugReportFragment.t(this$0).setText(BugReportFragment.i()[paramInt]);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.util.debug.BugReportFragment.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */