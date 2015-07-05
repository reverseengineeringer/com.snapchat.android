package com.snapchat.android.fragments.stories;

import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import atj;
import ban;
import bdw;
import bgr;
import bgr.a;
import com.snapchat.android.fragments.addfriends.AddFriendsFragment;
import com.squareup.otto.Bus;

final class StoriesFragment$19
  implements bgr.a
{
  StoriesFragment$19(StoriesFragment paramStoriesFragment) {}
  
  public final void a(View paramView)
  {
    paramView = a.m.a();
    a.getActivity().getAssets();
    atj.a(paramView);
    ((Button)a.m.a()).setBackgroundResource(StoriesFragment.n());
    ((Button)a.m.a()).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        ban.a().a(new bdw(new AddFriendsFragment()));
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.stories.StoriesFragment.19
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */