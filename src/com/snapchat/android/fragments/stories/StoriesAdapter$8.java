package com.snapchat.android.fragments.stories;

import ahc;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.snapchat.android.model.Friend;

final class StoriesAdapter$8
  implements DialogInterface.OnClickListener
{
  StoriesAdapter$8(StoriesAdapter paramStoriesAdapter, Friend paramFriend, ahc paramahc) {}
  
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
 * Qualified Name:     com.snapchat.android.fragments.stories.StoriesAdapter.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */