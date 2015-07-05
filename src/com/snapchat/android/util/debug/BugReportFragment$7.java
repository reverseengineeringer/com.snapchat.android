package com.snapchat.android.util.debug;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.Button;

final class BugReportFragment$7
  implements TextWatcher
{
  BugReportFragment$7(BugReportFragment paramBugReportFragment) {}
  
  public final void afterTextChanged(Editable paramEditable)
  {
    if ((paramEditable.length() > 2) && (!BugReportFragment.j(this$0)))
    {
      BugReportFragment.d(this$0, true);
      BugReportFragment.k(this$0).setEnabled(true);
    }
    while ((paramEditable.length() > 2) || (!BugReportFragment.j(this$0))) {
      return;
    }
    BugReportFragment.d(this$0, false);
    BugReportFragment.k(this$0).setEnabled(false);
  }
  
  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
}

/* Location:
 * Qualified Name:     com.snapchat.android.util.debug.BugReportFragment.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */