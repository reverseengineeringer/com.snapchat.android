package com.snapchat.android.util.debug;

import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import android.widget.TextView;
import ava;
import com.snapchat.android.util.AlertDialogUtils;

final class BugReportFragment$1
  implements View.OnClickListener
{
  BugReportFragment$1(BugReportFragment paramBugReportFragment) {}
  
  public final void onClick(View paramView)
  {
    if (BugReportFragment.a(this$0))
    {
      BugReportFragment.a(this$0, false);
      BugReportFragment.b(this$0).setText("Send this report only to yourself?");
      return;
    }
    paramView = new AlertDialog.Builder(BugReportFragment.c(this$0));
    final EditText localEditText = new EditText(BugReportFragment.c(this$0));
    final String str = ava.a("SHAKE_TO_REPORT_SEND_TO_SELF_EMAIL");
    if (str != null)
    {
      localEditText.setText(str);
      localEditText.setSelection(str.length() - 13);
    }
    for (;;)
    {
      paramView.setTitle("Please enter your email").setView(localEditText).setPositiveButton("Okay", new DialogInterface.OnClickListener()
      {
        public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          paramAnonymousDialogInterface = localEditText.getText().toString();
          if (paramAnonymousDialogInterface.endsWith("@snapchat.com"))
          {
            if (!paramAnonymousDialogInterface.equals(str)) {
              ava.a("SHAKE_TO_REPORT_SEND_TO_SELF_EMAIL", paramAnonymousDialogInterface);
            }
            BugReportFragment.b(this$0).setText(paramAnonymousDialogInterface);
            BugReportFragment.a(this$0, true);
            return;
          }
          AlertDialogUtils.a(BugReportFragment.c(this$0), "Please enter a valid @snapchat email!!");
        }
      }).show();
      return;
      localEditText.setText("@snapchat.com");
      localEditText.setSelection(0);
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.util.debug.BugReportFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */