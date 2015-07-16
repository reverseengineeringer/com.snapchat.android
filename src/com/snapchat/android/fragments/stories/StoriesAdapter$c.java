package com.snapchat.android.fragments.stories;

import akp;
import bli;
import cdn;
import chc;
import chd;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.FriendAction;
import com.snapchat.android.model.FriendAction.BlockReason;
import qg;
import us;

class StoriesAdapter$c
  extends qg
{
  private StoriesAdapter$c(StoriesAdapter paramStoriesAdapter, FriendAction paramFriendAction, Friend paramFriend, String paramString1, String paramString2, String paramString3, @chd String paramString4, FriendAction.BlockReason paramBlockReason)
  {
    super(paramFriendAction, paramFriend, paramString1, paramString2, paramString3, false, paramString4, paramBlockReason);
  }
  
  protected void a(bli parambli, @chd akp paramakp)
  {
    super.a(parambli, paramakp);
    c.notifyDataSetChanged();
  }
  
  @cdn
  public final void a(@chd bli parambli, @chc us paramus)
  {
    super.a(parambli, paramus);
    if (mFriend != null) {
      mFriend.mActionState = FriendAction.NONE;
    }
  }
  
  public void execute()
  {
    if (mFriend != null) {
      mFriend.mActionState = mAction;
    }
    super.execute();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.stories.StoriesAdapter.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */