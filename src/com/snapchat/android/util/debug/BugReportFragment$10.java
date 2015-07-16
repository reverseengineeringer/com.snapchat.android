package com.snapchat.android.util.debug;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import android.widget.TextView;
import avf;
import bar;
import bar.1;
import bhp;
import java.io.File;

final class BugReportFragment$10
  implements View.OnClickListener
{
  BugReportFragment$10(BugReportFragment paramBugReportFragment) {}
  
  public final void onClick(View paramView)
  {
    if (BugReportFragment.p(this$0) == null)
    {
      BugReportFragment.o(this$0).show();
      return;
    }
    if (BugReportFragment.a(this$0))
    {
      paramView = BugReportFragment.b(this$0).getText().toString();
      localObject = new StringBuilder(BugReportFragment.h(this$0).getText().toString());
      if ((!BugReportFragment.f(this$0)) || (TextUtils.isEmpty(BugReportFragment.q(this$0)))) {
        break label169;
      }
    }
    File[] arrayOfFile;
    label169:
    for (File localFile = BugReportFragment.c(this$0).getFileStreamPath(BugReportFragment.q(this$0));; localFile = null)
    {
      arrayOfFile = new File[BugReportFragment.r(this$0).length];
      int i = 0;
      while (i < arrayOfFile.length)
      {
        arrayOfFile[i] = BugReportFragment.c(this$0).getFileStreamPath(BugReportFragment.r(this$0)[i]);
        i += 1;
      }
      paramView = "null";
      break;
    }
    bar localbar = new bar();
    String str1 = BugReportFragment.a(BugReportFragment.c(this$0));
    String str2 = BugReportFragment.s(this$0).getText().toString();
    Object localObject = ((StringBuilder)localObject).toString();
    String str3 = BugReportFragment.l(this$0);
    String str4 = BugReportFragment.p(this$0);
    bhp.a(avf.SERIAL_EXECUTOR_FOR_DEBUGGING, new bar.1(localbar, paramView, str4, str1, str2, (String)localObject, localFile, arrayOfFile, str3));
    BugReportFragment.c(this$0).finish();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.util.debug.BugReportFragment.10
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */