package com.snapchat.android.fragments.stories;

import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import auh;
import bbo;
import bev;
import bhr;
import bhr.a;
import com.snapchat.android.fragments.addfriends.AddFriendsFragment;
import com.squareup.otto.Bus;

final class StoriesFragment$19
  implements bhr.a
{
  StoriesFragment$19(StoriesFragment paramStoriesFragment) {}
  
  public final void a(View paramView)
  {
    paramView = a.l.a();
    a.getActivity().getAssets();
    auh.a(paramView);
    ((Button)a.l.a()).setBackgroundResource(StoriesFragment.o());
    ((Button)a.l.a()).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        bbo.a().a(new bev(new AddFriendsFragment()));
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.stories.StoriesFragment.19
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */