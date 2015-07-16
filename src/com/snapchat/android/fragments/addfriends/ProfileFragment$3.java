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

final class ProfileFragment$3
  implements Animator.AnimatorListener
{
  ProfileFragment$3(ProfileFragment paramProfileFragment) {}
  
  public final void onAnimationCancel(Animator paramAnimator) {}
  
  public final void onAnimationEnd(Animator paramAnimator)
  {
    ProfileFragment.d(a).setVisibility(4);
    a.e.setVisibility(4);
    a.j.setVisibility(0);
    ProfileFragment.c(a).setScrollable(true);
    ProfileFragment.c(a).setInProfilePictureView(false);
    ProfileFragment.h(a).a(new bfk(TitleBarManager.Visibility.VISIBLE));
  }
  
  public final void onAnimationRepeat(Animator paramAnimator) {}
  
  public final void onAnimationStart(Animator paramAnimator)
  {
    a.e.getSnapcodeSvgImageView().setVisibility(4);
    ProfileFragment.e(a).setVisibility(0);
    ProfileFragment.c(a).setBackgroundViewVisibility(0);
    ProfileFragment.d(a).setVisibility(4);
    float f1 = fa).e;
    float f2 = fa).e;
    ProfileFragment.g(a).a(1.0F, 1.0F, f1 - f2);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.addfriends.ProfileFragment.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */