package com.snapchat.android.fragments.addfriends;

import akr;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.SharedPreferences.Editor;
import android.text.TextUtils;
import bbo;
import bcu;
import com.snapchat.android.database.SharedPreferenceKey;
import com.squareup.otto.Bus;

final class AddFriendsFragment$10
  implements DialogInterface.OnClickListener
{
  AddFriendsFragment$10(AddFriendsFragment paramAddFriendsFragment) {}
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    a.A();
    paramDialogInterface = a.j;
    paramDialogInterface = akr.l();
    if (!TextUtils.isEmpty(paramDialogInterface)) {
      akr.b().putBoolean(paramDialogInterface.hashCode() + SharedPreferenceKey.HAS_GIVEN_ACCESS_TO_CONTACTS.getKey(), true).apply();
    }
    bbo.a().a(new bcu());
    a.y();
    AddFriendsFragment.e(a);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.addfriends.AddFriendsFragment.10
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */