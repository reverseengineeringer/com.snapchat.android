package com.snapchat.android.fragments.stories;

import akc;
import apm;
import com.snapchat.android.analytics.AnalyticsEvents.AnalyticsContext;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.StorySnapLogbook;
import java.util.List;

public abstract interface StoriesAdapter$b
{
  public abstract void a(akc paramakc);
  
  public abstract void a(Friend paramFriend);
  
  public abstract void a(StorySnapLogbook paramStorySnapLogbook);
  
  public abstract boolean a(String paramString);
  
  public abstract boolean b(Friend paramFriend);
  
  public abstract void d();
  
  public abstract AnalyticsEvents.AnalyticsContext i();
  
  public abstract String j();
  
  public abstract boolean l();
  
  public abstract boolean m();
  
  public abstract List<apm> n();
  
  public abstract String x_();
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.stories.StoriesAdapter.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */