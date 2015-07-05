package com.snapchat.android.fragments.addfriends;

import ajx;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.SharedPreferences.Editor;
import android.text.TextUtils;
import ban;
import bbu;
import com.snapchat.android.database.SharedPreferenceKey;
import com.squareup.otto.Bus;

final class AddFriendsFragment$10
  implements DialogInterface.OnClickListener
{
  AddFriendsFragment$10(AddFriendsFragment paramAddFriendsFragment) {}
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    AddFriendsFragment.e(a);
    paramDialogInterface = a.j;
    paramDialogInterface = ajx.l();
    if (!TextUtils.isEmpty(paramDialogInterface)) {
      ajx.b().putBoolean(paramDialogInterface.hashCode() + SharedPreferenceKey.HAS_GIVEN_ACCESS_TO_CONTACTS.getKey(), true).apply();
    }
    ban.a().a(new bbu());
    a.z();
    AddFriendsFragment.f(a);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.addfriends.AddFriendsFragment.10
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */