package com.snapchat.android.fragments.addfriends;

import afi;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.Resources;
import android.graphics.Point;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnInfoListener;
import android.media.MediaPlayer.OnPreparedListener;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.support.v4.app.FragmentActivity;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.TextView;
import ban;
import bap;
import bdw;
import bdx;
import bel;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.ProfileEventAnalytics;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.database.SharedPreferenceKey;
import com.snapchat.android.fragments.settings.WebFragment;
import com.snapchat.android.ui.TextureVideoView;
import com.snapchat.android.util.TitleBarManager.Visibility;
import com.snapchat.android.util.eventbus.CameraDisplayState;
import com.snapchat.android.util.fragment.SnapchatFragment;
import com.squareup.otto.Bus;

public class AddFriendsBySnapcodeSetupFragment
  extends SnapchatFragment
{
  private static final String a = AddFriendsBySnapcodeSetupFragment.class.getSimpleName();
  private static final String b = "android.resource://" + SnapchatApplication.b().getPackageName() + '/' + 2131099657;
  private TextureVideoView c;
  private CheckBox d;
  private Bus e;
  private afi f;
  
  public AddFriendsBySnapcodeSetupFragment()
  {
    this(ban.a(), afi.a());
  }
  
  public AddFriendsBySnapcodeSetupFragment(Bus paramBus, afi paramafi)
  {
    e = paramBus;
    f = paramafi;
  }
  
  protected final void e() {}
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    float f1 = 230.0F;
    paramBundle = getActivity().getWindowManager().getDefaultDisplay();
    Point localPoint = new Point();
    paramBundle.getSize(localPoint);
    int i = y;
    float f3 = getActivitygetResourcesgetDisplayMetricsdensity;
    float f2 = i / f3 - 360.0F;
    if (f2 < 230.0F) {}
    for (;;)
    {
      i = (int)(f1 * f3 + 0.5F);
      mFragmentLayout = paramLayoutInflater.inflate(2130968576, paramViewGroup, false);
      e.a(new bel(TitleBarManager.Visibility.VISIBLE));
      c = ((TextureVideoView)c(2131361827));
      c.getLayoutParams().height = i;
      c(2131361822).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          getActivity().onBackPressed();
        }
      });
      c(2131361831).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          Timber.c(AddFriendsBySnapcodeSetupFragment.a(), "Show the gallery scanning view here!!!", new Object[0]);
          AddFriendsBySnapcodeSetupFragment.a(AddFriendsBySnapcodeSetupFragment.this).a(new bdw(LeftSwipeContentFragment.ADD_FRIENDS_FROM_CAMERAROLL_FRAGMENT));
          ProfileEventAnalytics.e();
        }
      });
      d = ((CheckBox)c(2131361830));
      d.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener()
      {
        public final void onCheckedChanged(CompoundButton paramAnonymousCompoundButton, boolean paramAnonymousBoolean)
        {
          paramAnonymousCompoundButton = PreferenceManager.getDefaultSharedPreferences(getActivity()).edit();
          paramAnonymousCompoundButton.putBoolean(SharedPreferenceKey.AUTO_LIBRARY_SCANNING_ENABLED.getKey(), paramAnonymousBoolean);
          paramAnonymousCompoundButton.apply();
          if (paramAnonymousBoolean)
          {
            ((TextView)c(2131361825)).setText(2131492868);
            AddFriendsBySnapcodeSetupFragment.a(AddFriendsBySnapcodeSetupFragment.this).a(new bdx());
            new EasyMetric("SNAPCODE_AUTOSCAN_ENABLED").b(false);
            return;
          }
          ((TextView)c(2131361825)).setText(2131492869);
          new EasyMetric("SNAPCODE_AUTOSCAN_DISABLED").b(false);
        }
      });
      paramLayoutInflater = PreferenceManager.getDefaultSharedPreferences(getActivity());
      d.setChecked(paramLayoutInflater.getBoolean(SharedPreferenceKey.AUTO_LIBRARY_SCANNING_ENABLED.getKey(), false));
      if (d.isChecked()) {
        ((TextView)c(2131361825)).setText(2131492868);
      }
      for (;;)
      {
        c(2131361832).setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            ban.a().a(new bdw(new WebFragment("https://support.snapchat.com/a/add-snapcodes", getString(2131492867), false, null)));
          }
        });
        c.setAlpha(0.0F);
        return mFragmentLayout;
        ((TextView)c(2131361825)).setText(2131492869);
      }
      f1 = f2;
    }
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    f.b();
  }
  
  public void onPause()
  {
    super.onPause();
    c.a();
    e.a(new bap(CameraDisplayState.SHOW));
  }
  
  public void onResume()
  {
    super.onResume();
    e.a(new bap(CameraDisplayState.CLOSE));
    c.setVideoPath(b);
    c.seekTo(0);
    c.setOnPreparedListener(new MediaPlayer.OnPreparedListener()
    {
      public final void onPrepared(MediaPlayer paramAnonymousMediaPlayer)
      {
        AddFriendsBySnapcodeSetupFragment.b(AddFriendsBySnapcodeSetupFragment.this).setLooping(true);
      }
    });
    c.setOnInfoListener(new MediaPlayer.OnInfoListener()
    {
      public final boolean onInfo(MediaPlayer paramAnonymousMediaPlayer, int paramAnonymousInt1, int paramAnonymousInt2)
      {
        if (paramAnonymousInt1 == 3) {
          AddFriendsBySnapcodeSetupFragment.b(AddFriendsBySnapcodeSetupFragment.this).setAlpha(1.0F);
        }
        return false;
      }
    });
    c.start();
    f.a(getActivity());
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.addfriends.AddFriendsBySnapcodeSetupFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */