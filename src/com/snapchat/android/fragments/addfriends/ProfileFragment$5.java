package com.snapchat.android.fragments.addfriends;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import bbo;
import bhb;
import chc;
import com.snapchat.android.ui.ProfilePictureView;
import com.snapchat.android.util.eventbus.ShowDialogEvent;
import com.snapchat.android.util.eventbus.ShowDialogEvent.DialogType;
import com.squareup.otto.Bus;

final class ProfileFragment$5
  extends bhb
{
  ProfileFragment$5(ProfileFragment paramProfileFragment, Context paramContext, Bitmap paramBitmap)
  {
    super(paramContext, paramBitmap);
  }
  
  protected final void a()
  {
    a.e.b(false);
    bbo.a().a(new ShowDialogEvent(ShowDialogEvent.DialogType.TOAST, 2131493086));
  }
  
  protected final void a(@chc String paramString)
  {
    a.e.b(false);
    Intent localIntent = new Intent("android.intent.action.SEND");
    localIntent.putExtra("android.intent.extra.STREAM", Uri.parse(paramString));
    localIntent.setType("image/jpeg");
    a.startActivity(Intent.createChooser(localIntent, ProfileFragment.j(a)));
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.addfriends.ProfileFragment.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */