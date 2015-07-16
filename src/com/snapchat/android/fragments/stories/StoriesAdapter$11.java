package com.snapchat.android.fragments.stories;

import agh;
import android.content.Context;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.FriendAction;
import com.snapchat.android.model.FriendAction.BlockReason;

final class StoriesAdapter$11
  extends agh
{
  StoriesAdapter$11(StoriesAdapter paramStoriesAdapter, Context paramContext, Friend paramFriend1, Friend paramFriend2)
  {
    super(paramContext, paramFriend1);
  }
  
  protected final void a(FriendAction.BlockReason paramBlockReason)
  {
    new StoriesAdapter.c(c, FriendAction.BLOCK, a, a.l(), a.mUserId, a.a(), null, paramBlockReason, (byte)0).execute();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.stories.StoriesAdapter.11
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */