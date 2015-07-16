package com.snapchat.android.fragments.addfriends;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Handler;
import android.os.Looper;
import avf;
import awx;
import com.snapchat.android.ui.ProfilePictureView;
import com.snapchat.android.ui.ProfilePictureView.5;
import com.snapchat.android.util.eventbus.ShowDialogEvent;
import com.snapchat.android.util.eventbus.ShowDialogEvent.DialogType;
import com.squareup.otto.Bus;
import wi;
import xn;

final class ProfileFragment$d
  implements wi
{
  private ProfileFragment$d(ProfileFragment paramProfileFragment) {}
  
  public final void a(Bitmap paramBitmap)
  {
    if (paramBitmap == null)
    {
      ProfileFragment.h(a).a(new ShowDialogEvent(ShowDialogEvent.DialogType.TOAST, 2131493087));
      a.v();
      a.i();
      return;
    }
    new awx(paramBitmap, BitmapFactory.decodeResource(a.getResources(), 2130837836), ProfileFragment.i(a)).executeOnExecutor(avf.HIGH_PRIORITY_EXECUTOR, new Void[0]);
    paramBitmap = a.e;
    e = new AnimatorSet();
    e.play(ObjectAnimator.ofFloat(a, "alpha", new float[] { 0.0F, 1.0F }));
    e.setDuration(150L);
    e.addListener(new ProfilePictureView.5(paramBitmap));
    e.start();
    ProfileFragment.q(a);
    if (ProfileFragment.i(a) >= 5)
    {
      a.v();
      return;
    }
    new Handler(Looper.getMainLooper()).postDelayed(new Runnable()
    {
      public final void run()
      {
        new StringBuilder("profile images - Capturing profile photo at index ").append(ProfileFragment.i(a));
        ProfileFragment.g(a).a(new ProfileFragment.d(a, (byte)0));
      }
    }, 1000L);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.addfriends.ProfileFragment.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */