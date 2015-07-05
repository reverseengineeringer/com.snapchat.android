package com.snapchat.android.util.debug;

import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;

final class BugReportFragment$3
  implements View.OnClickListener
{
  BugReportFragment$3(BugReportFragment paramBugReportFragment) {}
  
  public final void onClick(View paramView)
  {
    paramView = new ImageView(BugReportFragment.c(this$0));
    paramView.setImageBitmap(BugReportFragment.d(this$0));
    new AlertDialog.Builder(BugReportFragment.c(this$0)).setTitle("Included Screenshot").setView(paramView).setPositiveButton("Include", new DialogInterface.OnClickListener()
    {
      public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        if (!BugReportFragment.f(this$0))
        {
          BugReportFragment.b(this$0, true);
          BugReportFragment.g(this$0).setVisibility(8);
        }
      }
    }).setNegativeButton("Remove", new DialogInterface.OnClickListener()
    {
      public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        if (BugReportFragment.f(this$0))
        {
          BugReportFragment.b(this$0, false);
          BugReportFragment.g(this$0).setVisibility(0);
        }
      }
    }).setNeutralButton("Choose from Gallery", new DialogInterface.OnClickListener()
    {
      public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        BugReportFragment.e(this$0);
      }
    }).show();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.util.debug.BugReportFragment.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */