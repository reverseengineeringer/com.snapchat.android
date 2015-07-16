package com.snapchat.android.scan;

import agi;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.preference.PreferenceManager;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.RelativeLayout;
import bbo;
import bcx;
import bev;
import bew;
import com.snapchat.android.database.SharedPreferenceKey;
import com.snapchat.android.fragments.addfriends.AddFriendsBySnapcodeSetupFragment;
import com.squareup.otto.Bus;

public class FirstAutoScanNotificationView
  extends RelativeLayout
{
  private static final String a = FirstAutoScanNotificationView.class.getSimpleName();
  
  public FirstAutoScanNotificationView(Context paramContext)
  {
    super(paramContext);
  }
  
  public FirstAutoScanNotificationView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public FirstAutoScanNotificationView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public FirstAutoScanNotificationView(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    super(paramContext, paramAttributeSet, paramInt1, paramInt2);
  }
  
  public void onFinishInflate()
  {
    setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        FirstAutoScanNotificationView.a();
        bbo.a().a(new bcx());
        bbo.a().a(new bev(new AddFriendsBySnapcodeSetupFragment(bbo.a(), agi.a())));
      }
    });
    findViewById(2131362361).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        FirstAutoScanNotificationView.a();
        paramAnonymousView = PreferenceManager.getDefaultSharedPreferences(getContext()).edit();
        paramAnonymousView.putBoolean(SharedPreferenceKey.AUTO_LIBRARY_SCANNING_ENABLED.getKey(), true);
        paramAnonymousView.commit();
        bbo.a().a(new bew());
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.scan.FirstAutoScanNotificationView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */