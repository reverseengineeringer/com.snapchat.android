package com.snapchat.android.fragments.addfriends;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import ban;
import bgb;
import com.snapchat.android.Timber;
import com.snapchat.android.ui.ProfilePictureView;
import com.snapchat.android.util.eventbus.ShowDialogEvent;
import com.snapchat.android.util.eventbus.ShowDialogEvent.DialogType;
import com.squareup.otto.Bus;

final class ProfileFragment$5
  extends bgb
{
  ProfileFragment$5(ProfileFragment paramProfileFragment, Context paramContext, Bitmap paramBitmap)
  {
    super(paramContext, paramBitmap);
  }
  
  protected final void a()
  {
    Timber.c("ProfileFragment", "profile images - shared image failed to be inserted into media store", new Object[0]);
    a.h.b(false);
    ban.a().a(new ShowDialogEvent(ShowDialogEvent.DialogType.TOAST, 2131493086));
  }
  
  protected final void a(String paramString)
  {
    Timber.c("ProfileFragment", "profile images - shared image was inserted into media store successfully! " + paramString, new Object[0]);
    a.h.b(false);
    Intent localIntent = new Intent("android.intent.action.SEND");
    localIntent.putExtra("android.intent.extra.STREAM", Uri.parse(paramString));
    localIntent.setType("image/jpeg");
    a.startActivity(Intent.createChooser(localIntent, ProfileFragment.k(a)));
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.addfriends.ProfileFragment.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */