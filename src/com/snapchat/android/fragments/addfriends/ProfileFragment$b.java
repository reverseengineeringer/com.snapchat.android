package com.snapchat.android.fragments.addfriends;

import ajx;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewStub;
import android.widget.ImageView;
import android.widget.TextView;
import aol;
import bgh;
import com.snapchat.android.Timber;
import com.snapchat.android.ui.ProfilePictureView;
import com.snapchat.android.ui.SharedProfileSnapcodeView;
import fl;

final class ProfileFragment$b
  implements bgh
{
  private ProfileFragment$b(ProfileFragment paramProfileFragment) {}
  
  public final void a(fl paramfl)
  {
    if (a.getActivity() == null)
    {
      Timber.e("ProfileFragment", "getActivity() returned null in onSvgLoaded() we need to figure this out!", new Object[0]);
      return;
    }
    if (paramfl == null)
    {
      paramfl = ProfileFragment.l(a);
      localObject = a.getActivity();
      ProfileFragment.b(a);
      paramfl.c((Context)localObject, ajx.bf());
      return;
    }
    if (ProfileFragment.f(a) == null) {
      ProfileFragment.m(a);
    }
    Object localObject = paramfl.a();
    ProfileFragment.f(a).setImageDrawable((Drawable)localObject);
    a.a(8);
    ProfileFragment.b(a);
    int i;
    if (!ajx.E())
    {
      ProfileFragment.b(a);
      if (ajx.aS())
      {
        i = 1;
        if (i == 0) {
          break label264;
        }
        a.k.setText(ProfileFragment.n(a));
        a.j.setVisibility(0);
      }
    }
    for (;;)
    {
      if (a.h == null)
      {
        a.h = ((ProfilePictureView)ProfileFragment.o(a).inflate());
        a.h.setCallback(a);
      }
      a.h.setSnapcodeSvg(paramfl);
      if (ProfileFragment.p(a) == null) {
        ProfileFragment.q(a);
      }
      ProfileFragment.p(a).setSnapcodeSvg(paramfl);
      Timber.c("ProfileFragment", "profile images - snapcode was loaded from cache", new Object[0]);
      return;
      i = 0;
      break;
      label264:
      a.j.setVisibility(8);
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.addfriends.ProfileFragment.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */