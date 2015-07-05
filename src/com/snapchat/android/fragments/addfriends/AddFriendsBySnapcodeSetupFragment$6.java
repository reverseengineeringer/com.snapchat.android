package com.snapchat.android.fragments.addfriends;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnInfoListener;
import com.snapchat.android.ui.TextureVideoView;

final class AddFriendsBySnapcodeSetupFragment$6
  implements MediaPlayer.OnInfoListener
{
  AddFriendsBySnapcodeSetupFragment$6(AddFriendsBySnapcodeSetupFragment paramAddFriendsBySnapcodeSetupFragment) {}
  
  public final boolean onInfo(MediaPlayer paramMediaPlayer, int paramInt1, int paramInt2)
  {
    if (paramInt1 == 3) {
      AddFriendsBySnapcodeSetupFragment.b(a).setAlpha(1.0F);
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.addfriends.AddFriendsBySnapcodeSetupFragment.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */