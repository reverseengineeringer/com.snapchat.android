package com.snapchat.android.fragments.addfriends;

import ajx;
import android.content.Intent;
import aol;
import awp;
import com.snapchat.android.util.profileimages.ProfileImageUtils;
import java.util.HashSet;
import java.util.List;

final class ProfileFragment$6
  implements Runnable
{
  ProfileFragment$6(ProfileFragment paramProfileFragment) {}
  
  public final void run()
  {
    Object localObject1 = a;
    Object localObject2 = ProfileImageUtils.a(a);
    long l = ajx.z();
    Object localObject3 = e;
    ajx localajx = d;
    ProfileImageUtils.a((List)localObject2, l, (awp)localObject3);
    localObject2 = p;
    localObject1 = f;
    localObject3 = ((aol)localObject1).b(c);
    ((Intent)localObject3).putExtra("op_code", 1030);
    ((HashSet)localObject2).add(Integer.valueOf(((aol)localObject1).a(c, (Intent)localObject3)));
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.addfriends.ProfileFragment.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */