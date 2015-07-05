package com.snapchat.android.util.debug;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.ImageView;

final class BugReportFragment$3$3
  implements DialogInterface.OnClickListener
{
  BugReportFragment$3$3(BugReportFragment.3 param3) {}
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (!BugReportFragment.f(this$1.this$0))
    {
      BugReportFragment.b(this$1.this$0, true);
      BugReportFragment.g(this$1.this$0).setVisibility(8);
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.util.debug.BugReportFragment.3.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */