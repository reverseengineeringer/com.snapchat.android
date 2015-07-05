package com.snapchat.android.util.debug;

import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;

final class BugReportRemoteLogListFragment$1
  implements AdapterView.OnItemClickListener
{
  BugReportRemoteLogListFragment$1(BugReportRemoteLogListFragment paramBugReportRemoteLogListFragment) {}
  
  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (paramAdapterView.getItemAtPosition(paramInt).toString().length() == 1) {
      return;
    }
    if ((this$0.getActivity() instanceof BugReportRemoteLogListFragment.a))
    {
      paramAdapterView = paramAdapterView.getItemAtPosition(paramInt).toString();
      ((BugReportRemoteLogListFragment.a)this$0.getActivity()).a(paramAdapterView);
    }
    this$0.getActivity().mFragments.beginTransaction().remove(this$0).addToBackStack("Chosen remote recipient").commit();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.util.debug.BugReportRemoteLogListFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */