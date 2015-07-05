package com.snapchat.android.fragments.addfriends;

import android.graphics.Bitmap;
import bfx;
import com.snapchat.android.Timber;
import java.util.List;

final class ProfileFragment$a
  implements bfx
{
  private ProfileFragment$a(ProfileFragment paramProfileFragment) {}
  
  public final void a(List<Bitmap> paramList)
  {
    if (paramList == null)
    {
      Timber.f("ProfileFragment", "profile images - onProfileImagesLoaded but bitmapList is null", new Object[0]);
      return;
    }
    if (paramList.size() != 5)
    {
      Timber.f("ProfileFragment", "profile images - loaded profile images from cache but the number of images is wrong!", new Object[0]);
      return;
    }
    ProfileFragment.b(a, paramList);
    ProfileFragment.a(a, paramList);
    Timber.c("ProfileFragment", "profile images - pictures were loaded from cache", new Object[0]);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.addfriends.ProfileFragment.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */