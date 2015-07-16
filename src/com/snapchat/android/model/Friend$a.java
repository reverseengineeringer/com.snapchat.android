package com.snapchat.android.model;

import akr;
import com.snapchat.android.util.FriendSectionizer;
import com.snapchat.android.util.FriendSectionizer.FriendSection;

public final class Friend$a
  extends FriendSectionizer<Friend>
{
  public static FriendSectionizer.FriendSection a(Friend paramFriend)
  {
    if ((paramFriend.j()) && (mStubFriend)) {
      return FriendSectionizer.FriendSection.BEST_FRIEND;
    }
    if ((mIsRecent) && (mStubFriend)) {
      return FriendSectionizer.FriendSection.RECENT;
    }
    if ((mSelectedForNeedsLove) && (mStubFriend)) {
      return FriendSectionizer.FriendSection.NEEDS_LOVE;
    }
    if ((paramFriend.l().equals(akr.l())) && (mStubFriend)) {
      return FriendSectionizer.FriendSection.ME;
    }
    if (mStubFriend) {
      return FriendSectionizer.FriendSection.STORIES;
    }
    if (mJustAdded) {
      return FriendSectionizer.FriendSection.JUST_ADDED;
    }
    if (paramFriend.m()) {
      return FriendSectionizer.FriendSection.SUGGESTED;
    }
    if (mIsBlocked) {
      return FriendSectionizer.FriendSection.BLOCKED;
    }
    return FriendSectionizer.FriendSection.ALPHABETICAL;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.model.Friend.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */