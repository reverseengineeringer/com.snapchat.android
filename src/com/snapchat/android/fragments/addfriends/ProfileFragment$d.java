package com.snapchat.android.fragments.addfriends;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Handler;
import android.os.Looper;
import auh;
import avz;
import com.snapchat.android.Timber;
import com.snapchat.android.ui.ProfilePictureView;
import com.snapchat.android.ui.ProfilePictureView.5;
import com.snapchat.android.util.eventbus.ShowDialogEvent;
import com.snapchat.android.util.eventbus.ShowDialogEvent.DialogType;
import com.squareup.otto.Bus;
import vm;
import wr;

final class ProfileFragment$d
  implements vm
{
  private ProfileFragment$d(ProfileFragment paramProfileFragment) {}
  
  public final void a(Bitmap paramBitmap)
  {
    if (paramBitmap == null)
    {
      ProfileFragment.i(a).a(new ShowDialogEvent(ShowDialogEvent.DialogType.TOAST, 2131493087));
      a.t();
      ProfileFragment.r(a);
      return;
    }
    new avz(paramBitmap, BitmapFactory.decodeResource(a.getResources(), 2130837836)).executeOnExecutor(auh.HIGH_PRIORITY_EXECUTOR, new Void[0]);
    paramBitmap = a.h;
    e = new AnimatorSet();
    e.play(ObjectAnimator.ofFloat(a, "alpha", new float[] { 0.0F, 1.0F }));
    e.setDuration(150L);
    e.addListener(new ProfilePictureView.5(paramBitmap));
    e.start();
    ProfileFragment.s(a);
    if (ProfileFragment.j(a) >= 5)
    {
      a.t();
      return;
    }
    new Handler(Looper.getMainLooper()).postDelayed(new Runnable()
    {
      public final void run()
      {
        Timber.c("ProfileFragment", "profile images - Capturing profile photo at index " + ProfileFragment.j(a), new Object[0]);
        ProfileFragment.h(a).a(new ProfileFragment.d(a, (byte)0));
      }
    }, 1000L);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.addfriends.ProfileFragment.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */