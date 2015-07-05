package com.snapchat.android.app.feature.messaging.feed.ui.fragment;

import android.support.v7.widget.RecyclerView.a;
import java.util.List;
import ut;
import ux;

public class FeedAdapter
  extends RecyclerView.a<ux>
{
  public List<ut> c;
  
  public FeedAdapter(List<ut> paramList)
  {
    c = paramList;
  }
  
  public final int a()
  {
    return c.size();
  }
  
  public final int a(int paramInt)
  {
    FeedViewType localFeedViewType = ((ut)c.get(paramInt)).C_();
    switch (1.a[localFeedViewType.ordinal()])
    {
    default: 
      throw new RuntimeException("Unsupported view type: " + localFeedViewType);
    case 1: 
      return FeedViewType.CONVERSATION.ordinal();
    }
    return FeedViewType.LOADING.ordinal();
  }
  
  public void a(ux paramux, int paramInt)
  {
    paramux.b(false);
    paramux.a((ut)c.get(paramInt));
  }
  
  public static enum FeedViewType
  {
    CONVERSATION,  LOADING;
    
    private FeedViewType() {}
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.app.feature.messaging.feed.ui.fragment.FeedAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */