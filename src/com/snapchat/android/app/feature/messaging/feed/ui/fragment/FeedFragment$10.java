package com.snapchat.android.app.feature.messaging.feed.ui.fragment;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.preference.PreferenceManager;
import com.snapchat.android.database.SharedPreferenceKey;

final class FeedFragment$10
  implements Runnable
{
  FeedFragment$10(FeedFragment paramFeedFragment, int paramInt) {}
  
  public final void run()
  {
    if ((!FeedFragment.s(b)) && (a > 0))
    {
      FeedFragment.a(b, a - 1);
      return;
    }
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(b.getActivity()).edit();
    localEditor.remove(SharedPreferenceKey.BOUNCE_TEAM_SNAPCHAT_CONVERSATION_ONBOARDING.getKey());
    localEditor.apply();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.app.feature.messaging.feed.ui.fragment.FeedFragment.10
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */