package com.snapchat.android.fragments.addfriends;

import akr;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewStub;
import android.widget.ImageView;
import android.widget.TextView;
import aph;
import bhh;
import com.snapchat.android.ui.ProfilePictureView;
import com.snapchat.android.ui.SharedProfileSnapcodeView;
import fu;

final class ProfileFragment$b
  implements bhh
{
  private ProfileFragment$b(ProfileFragment paramProfileFragment) {}
  
  public final void a(fu paramfu)
  {
    if (a.getActivity() == null) {
      return;
    }
    if (paramfu == null)
    {
      paramfu = ProfileFragment.k(a);
      localObject = a.getActivity();
      ProfileFragment.b(a);
      paramfu.c((Context)localObject, akr.bc());
      return;
    }
    if (ProfileFragment.e(a) == null) {
      ProfileFragment.l(a);
    }
    Object localObject = paramfu.a();
    ProfileFragment.e(a).setImageDrawable((Drawable)localObject);
    a.a(8);
    ProfileFragment.b(a);
    int i;
    if (!akr.E())
    {
      ProfileFragment.b(a);
      if (akr.aP())
      {
        i = 1;
        if (i == 0) {
          break label242;
        }
        a.h.setText(ProfileFragment.m(a));
        a.g.setVisibility(0);
      }
    }
    for (;;)
    {
      if (a.e == null)
      {
        a.e = ((ProfilePictureView)ProfileFragment.n(a).inflate());
        a.e.setCallback(a);
      }
      a.e.setSnapcodeSvg(paramfu);
      if (ProfileFragment.o(a) == null) {
        ProfileFragment.p(a);
      }
      ProfileFragment.o(a).setSnapcodeSvg(paramfu);
      return;
      i = 0;
      break;
      label242:
      a.g.setVisibility(8);
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.addfriends.ProfileFragment.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */