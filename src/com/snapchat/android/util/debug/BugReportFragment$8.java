package com.snapchat.android.util.debug;

import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import awf;

final class BugReportFragment$8
  implements View.OnClickListener
{
  BugReportFragment$8(BugReportFragment paramBugReportFragment) {}
  
  public final void onClick(View paramView)
  {
    if (BugReportFragment.l(this$0) == null) {}
    try
    {
      awf.a(BugReportFragment.c(this$0), paramView);
      this$0.getActivity().mFragments.beginTransaction().add(val$containerId, new BugReportRemoteLogListFragment()).addToBackStack("BugReportRemoteLogListFragment").commit();
      return;
    }
    catch (IllegalStateException paramView) {}
    BugReportFragment.m(this$0);
    BugReportFragment.n(this$0).setText("Remote Log");
    return;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.util.debug.BugReportFragment.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */