package com.snapchat.android.fragments.stories;

import afh;
import android.content.Context;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.FriendAction;
import com.snapchat.android.model.FriendAction.BlockReason;

final class StoriesAdapter$10
  extends afh
{
  StoriesAdapter$10(StoriesAdapter paramStoriesAdapter, Context paramContext, Friend paramFriend1, Friend paramFriend2)
  {
    super(paramContext, paramFriend1);
  }
  
  protected final void a(FriendAction.BlockReason paramBlockReason)
  {
    new StoriesAdapter.c(c, FriendAction.BLOCK, a, a.h(), a.mUserId, a.a(), null, paramBlockReason, (byte)0).f();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.stories.StoriesAdapter.10
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */