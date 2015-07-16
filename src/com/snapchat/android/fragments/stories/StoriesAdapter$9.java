package com.snapchat.android.fragments.stories;

import ahz;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.snapchat.android.model.Friend;

final class StoriesAdapter$9
  implements DialogInterface.OnClickListener
{
  StoriesAdapter$9(StoriesAdapter paramStoriesAdapter, Friend paramFriend, ahz paramahz) {}
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return;
    case 0: 
      StoriesAdapter.a(c, a);
      return;
    case 1: 
      StoriesAdapter.b(c, a);
      return;
    }
    StoriesAdapter.c(c, a);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.stories.StoriesAdapter.9
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */