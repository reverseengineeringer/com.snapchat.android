package com.snapchat.android.fragments.stories;

import ajv;
import bkh;
import ccm;
import cgb;
import cgc;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.FriendAction;
import com.snapchat.android.model.FriendAction.BlockReason;
import pp;
import uc;

class StoriesAdapter$c
  extends pp
{
  private StoriesAdapter$c(StoriesAdapter paramStoriesAdapter, FriendAction paramFriendAction, Friend paramFriend, String paramString1, String paramString2, String paramString3, @cgc String paramString4, FriendAction.BlockReason paramBlockReason)
  {
    super(paramFriendAction, paramFriend, paramString1, paramString2, paramString3, false, paramString4, paramBlockReason);
  }
  
  protected void a(bkh parambkh, @cgc ajv paramajv)
  {
    super.a(parambkh, paramajv);
    c.notifyDataSetChanged();
  }
  
  @ccm
  public final void a(@cgc bkh parambkh, @cgb uc paramuc)
  {
    super.a(parambkh, paramuc);
    if (mFriend != null) {
      mFriend.mActionState = FriendAction.NONE;
    }
  }
  
  public final void f()
  {
    if (mFriend != null) {
      mFriend.mActionState = mAction;
    }
    super.f();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.stories.StoriesAdapter.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */