package com.snapchat.android.fragments.addfriends;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.widget.ImageView;
import bel;
import com.snapchat.android.Timber;
import com.snapchat.android.camera.ui.viewflipper.CameraViewFlipper;
import com.snapchat.android.ui.ProfileCameraMaskView;
import com.snapchat.android.ui.ProfilePictureView;
import com.snapchat.android.util.TitleBarManager.Visibility;
import com.squareup.otto.Bus;
import wr;

final class ProfileFragment$2
  implements Animator.AnimatorListener
{
  ProfileFragment$2(ProfileFragment paramProfileFragment) {}
  
  public final void onAnimationCancel(Animator paramAnimator)
  {
    Timber.c("ProfileFragment", "profile images - animating to profile picture view has been canceled", new Object[0]);
  }
  
  public final void onAnimationEnd(Animator paramAnimator)
  {
    ProfileFragment.d(a).setBackgroundViewVisibility(4);
    ProfileFragment.e(a).setVisibility(0);
    a.h.getSnapcodeSvgImageView().setVisibility(0);
    a.h.setProfilePicturesControlButtonsVisibility(0);
    ProfileFragment.f(a).setVisibility(4);
    a.h.g = true;
    if (a.m.getDrawable() != null)
    {
      a.h.a(true);
      a.m.setVisibility(0);
    }
    for (;;)
    {
      float f1 = ga).d;
      float f2 = ga).e;
      ProfileFragment.h(a).a(0.65F, 0.65F, f1 - f2);
      ProfileFragment.d(a).setInProfilePictureView(true);
      ProfileFragment.i(a).a(new bel(TitleBarManager.Visibility.HIDDEN));
      Timber.c("ProfileFragment", "profile images - animated into profile picture view", new Object[0]);
      return;
      a.h.a(false);
      a.m.setVisibility(4);
    }
  }
  
  public final void onAnimationRepeat(Animator paramAnimator) {}
  
  public final void onAnimationStart(Animator paramAnimator)
  {
    a.h.setVisibility(0);
    ProfileFragment.d(a).setScrollable(false);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.addfriends.ProfileFragment.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */