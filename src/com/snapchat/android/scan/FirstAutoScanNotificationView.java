package com.snapchat.android.scan;

import afi;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.preference.PreferenceManager;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.RelativeLayout;
import ban;
import bbx;
import bdw;
import bdx;
import com.snapchat.android.Timber;
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
        Timber.c(FirstAutoScanNotificationView.a(), "More info!", new Object[0]);
        ban.a().a(new bbx());
        ban.a().a(new bdw(new AddFriendsBySnapcodeSetupFragment(ban.a(), afi.a())));
      }
    });
    findViewById(2131362363).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        Timber.c(FirstAutoScanNotificationView.a(), "Set library scanning enabled! YES!", new Object[0]);
        paramAnonymousView = PreferenceManager.getDefaultSharedPreferences(getContext()).edit();
        paramAnonymousView.putBoolean(SharedPreferenceKey.AUTO_LIBRARY_SCANNING_ENABLED.getKey(), true);
        paramAnonymousView.commit();
        ban.a().a(new bdx());
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.scan.FirstAutoScanNotificationView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */