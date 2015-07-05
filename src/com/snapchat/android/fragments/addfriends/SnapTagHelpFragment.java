package com.snapchat.android.fragments.addfriends;

import android.app.Activity;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnPreparedListener;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import ban;
import bap;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.ui.TextureVideoView;
import com.snapchat.android.ui.window.WindowConfiguration.StatusBarDrawMode;
import com.snapchat.android.util.eventbus.CameraDisplayState;
import com.snapchat.android.util.fragment.SnapchatFragment;
import com.squareup.otto.Bus;
import nf;

public class SnapTagHelpFragment
  extends SnapchatFragment
{
  private static final String a = "android.resource://" + SnapchatApplication.b().getPackageName() + '/' + 2131099656;
  private TextureVideoView b;
  
  protected final WindowConfiguration.StatusBarDrawMode b()
  {
    return WindowConfiguration.StatusBarDrawMode.DRAW_BELOW_FOR_ADJUSTABLE_UI;
  }
  
  protected final void e() {}
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    nf.d();
    mFragmentLayout = paramLayoutInflater.inflate(2130968742, paramViewGroup, false);
    b = ((TextureVideoView)c(2131362729));
    mFragmentLayout.setOnTouchListener(new View.OnTouchListener()
    {
      public final boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
      {
        paramAnonymousView = getActivity();
        if (paramAnonymousView != null) {
          paramAnonymousView.onBackPressed();
        }
        return true;
      }
    });
    nf.e();
    return mFragmentLayout;
  }
  
  public void onPause()
  {
    super.onPause();
    b.a();
    ban.a().a(new bap(CameraDisplayState.SHOW));
  }
  
  public void onResume()
  {
    super.onResume();
    ban.a().a(new bap(CameraDisplayState.CLOSE));
    b.setVideoPath(a);
    b.seekTo(0);
    b.start();
    b.setOnPreparedListener(new MediaPlayer.OnPreparedListener()
    {
      public final void onPrepared(MediaPlayer paramAnonymousMediaPlayer)
      {
        SnapTagHelpFragment.a(SnapTagHelpFragment.this).setLooping(true);
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.addfriends.SnapTagHelpFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */