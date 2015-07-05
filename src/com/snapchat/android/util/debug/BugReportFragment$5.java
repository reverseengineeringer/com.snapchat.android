package com.snapchat.android.util.debug;

import android.text.Editable;
import android.view.View;
import android.view.View.OnFocusChangeListener;
import android.widget.EditText;

final class BugReportFragment$5
  implements View.OnFocusChangeListener
{
  BugReportFragment$5(BugReportFragment paramBugReportFragment) {}
  
  public final void onFocusChange(View paramView, boolean paramBoolean)
  {
    if (paramBoolean) {
      BugReportFragment.h(this$0).setSelection(BugReportFragment.h(this$0).getText().length());
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.util.debug.BugReportFragment.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */