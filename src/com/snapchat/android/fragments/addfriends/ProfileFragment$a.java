package com.snapchat.android.fragments.addfriends;

import android.graphics.Bitmap;
import bgx;
import com.snapchat.android.ui.ProfilePictureView;
import java.util.List;

public final class ProfileFragment$a
  implements bgx
{
  protected ProfileFragment$a(ProfileFragment paramProfileFragment) {}
  
  public final void a(List<Bitmap> paramList)
  {
    if ((paramList != null) && (paramList.size() == 5))
    {
      if ((a.e == null) || (!a.e.f))
      {
        a.a = paramList;
        a.a(paramList);
      }
    }
    else {
      return;
    }
    paramList = new StringBuilder("profile images - pictures were loaded but user is capturing pictures now with mProfileImagesList size: ");
    if (a.a == null) {}
    for (int i = 0;; i = a.a.size())
    {
      paramList.append(i);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.addfriends.ProfileFragment.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */