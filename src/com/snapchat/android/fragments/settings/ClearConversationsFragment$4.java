package com.snapchat.android.fragments.settings;

import android.widget.ProgressBar;
import android.widget.TextView;
import com.snapchat.android.util.AlertDialogUtils;

final class ClearConversationsFragment$4
  implements Runnable
{
  ClearConversationsFragment$4(ClearConversationsFragment paramClearConversationsFragment) {}
  
  public final void run()
  {
    ClearConversationsFragment.a(a).setEnabled(true);
    ClearConversationsFragment.b(a).setVisibility(8);
    AlertDialogUtils.a(a.getString(2131493418), a.getActivity());
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.ClearConversationsFragment.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */