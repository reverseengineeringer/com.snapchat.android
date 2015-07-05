package com.snapchat.android.util.debug;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.EditText;
import android.widget.TextView;
import auc;
import com.snapchat.android.util.AlertDialogUtils;

final class BugReportFragment$1$1
  implements DialogInterface.OnClickListener
{
  BugReportFragment$1$1(BugReportFragment.1 param1, EditText paramEditText, String paramString) {}
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface = val$input.getText().toString();
    if (paramDialogInterface.endsWith("@snapchat.com"))
    {
      if (!paramDialogInterface.equals(val$existingSendToSelfEmail)) {
        auc.a("SHAKE_TO_REPORT_SEND_TO_SELF_EMAIL", paramDialogInterface);
      }
      BugReportFragment.b(this$1.this$0).setText(paramDialogInterface);
      BugReportFragment.a(this$1.this$0, true);
      return;
    }
    AlertDialogUtils.a(BugReportFragment.c(this$1.this$0), "Please enter a valid @snapchat email!!");
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.util.debug.BugReportFragment.1.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */