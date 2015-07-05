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

final class ProfileFragment$3
  implements Animator.AnimatorListener
{
  ProfileFragment$3(ProfileFragment paramProfileFragment) {}
  
  public final void onAnimationCancel(Animator paramAnimator)
  {
    Timber.c("ProfileFragment", "profile images - animating back to profile view has been canceled", new Object[0]);
  }
  
  public final void onAnimationEnd(Animator paramAnimator)
  {
    ProfileFragment.e(a).setVisibility(4);
    a.h.setVisibility(4);
    a.m.setVisibility(0);
    ProfileFragment.d(a).setScrollable(true);
    ProfileFragment.d(a).setInProfilePictureView(false);
    ProfileFragment.i(a).a(new bel(TitleBarManager.Visibility.VISIBLE));
    Timber.c("ProfileFragment", "profile images - animated back to profile view", new Object[0]);
  }
  
  public final void onAnimationRepeat(Animator paramAnimator) {}
  
  public final void onAnimationStart(Animator paramAnimator)
  {
    a.h.getSnapcodeSvgImageView().setVisibility(4);
    ProfileFragment.f(a).setVisibility(0);
    ProfileFragment.d(a).setBackgroundViewVisibility(0);
    ProfileFragment.e(a).setVisibility(4);
    float f1 = ga).e;
    float f2 = ga).e;
    ProfileFragment.h(a).a(1.0F, 1.0F, f1 - f2);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.addfriends.ProfileFragment.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */