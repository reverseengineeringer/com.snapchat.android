package com.snapchat.android.util.debug;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentManager.OnBackStackChangedListener;
import android.widget.ImageView;
import aur;
import azg;
import azv;
import com.snapchat.android.SnapchatActivity;
import com.snapchat.android.util.AlertDialogUtils;
import java.util.List;

public class BugReportActivity
  extends SnapchatActivity
  implements FragmentManager.OnBackStackChangedListener, BugReportRemoteLogListFragment.a
{
  private String mRemoteLogFriendName;
  
  public final void a(String paramString)
  {
    mRemoteLogFriendName = paramString;
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if ((paramInt1 == 1001) && (paramInt2 == -1))
    {
      paramIntent = aur.a(paramIntent.getData(), this);
      if (paramIntent == null) {
        AlertDialogUtils.a(2131493329, this);
      }
    }
    else
    {
      return;
    }
    azg.a(this, paramIntent);
    ((ImageView)findViewById(2131361927)).setImageBitmap(paramIntent);
  }
  
  public final void onBackStackChanged()
  {
    if (mFragments.getBackStackEntryCount() > 0)
    {
      Fragment localFragment = (Fragment)mFragments.getFragments().get(0);
      if ((localFragment instanceof BugReportRemoteLogListFragment.a)) {
        ((BugReportRemoteLogListFragment.a)localFragment).a(mRemoteLogFriendName);
      }
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130968591);
    if (!ReleaseManager.f()) {
      throw new SecurityException("Someone directly hacked and called  an activity they are not supposed to!");
    }
    mFragments.addOnBackStackChangedListener(this);
  }
  
  protected void onStart()
  {
    super.onStart();
    mShakeReporter.a();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.util.debug.BugReportActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */