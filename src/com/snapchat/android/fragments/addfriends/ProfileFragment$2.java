package com.snapchat.android.fragments.addfriends;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.widget.ImageView;
import bfk;
import com.snapchat.android.camera.ui.viewflipper.CameraViewFlipper;
import com.snapchat.android.ui.ProfileCameraMaskView;
import com.snapchat.android.ui.ProfilePictureView;
import com.snapchat.android.util.TitleBarManager.Visibility;
import com.squareup.otto.Bus;
import xn;

final class ProfileFragment$2
  implements Animator.AnimatorListener
{
  ProfileFragment$2(ProfileFragment paramProfileFragment) {}
  
  public final void onAnimationCancel(Animator paramAnimator) {}
  
  public final void onAnimationEnd(Animator paramAnimator)
  {
    ProfileFragment.c(a).setBackgroundViewVisibility(4);
    ProfileFragment.d(a).setVisibility(0);
    a.e.getSnapcodeSvgImageView().setVisibility(0);
    a.e.setProfilePicturesControlButtonsVisibility(0);
    ProfileFragment.e(a).setVisibility(4);
    a.e.g = true;
    if (a.j.getDrawable() != null)
    {
      a.e.a(true);
      a.j.setVisibility(0);
    }
    for (;;)
    {
      float f1 = fa).d;
      float f2 = fa).e;
      ProfileFragment.g(a).a(0.65F, 0.65F, f1 - f2);
      ProfileFragment.c(a).setInProfilePictureView(true);
      ProfileFragment.h(a).a(new bfk(TitleBarManager.Visibility.HIDDEN));
      return;
      a.e.a(false);
      a.j.setVisibility(4);
    }
  }
  
  public final void onAnimationRepeat(Animator paramAnimator) {}
  
  public final void onAnimationStart(Animator paramAnimator)
  {
    a.e.setVisibility(0);
    ProfileFragment.c(a).setScrollable(false);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.addfriends.ProfileFragment.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */