package com.snapchat.android.app.feature.messaging.feed.ui.fragment;

import android.support.v7.widget.RecyclerView.a;
import arm;
import java.util.List;
import vp;
import vt;

public class FeedAdapter
  extends RecyclerView.a<vt>
{
  public List<vp> c;
  public arm d;
  
  public FeedAdapter(List<vp> paramList)
  {
    c = paramList;
  }
  
  public final int a()
  {
    return c.size();
  }
  
  public final int a(int paramInt)
  {
    FeedViewType localFeedViewType = ((vp)c.get(paramInt)).B_();
    switch (1.a[localFeedViewType.ordinal()])
    {
    default: 
      throw new RuntimeException("Unsupported view type: " + localFeedViewType);
    case 1: 
      return FeedViewType.CONVERSATION.ordinal();
    }
    return FeedViewType.LOADING.ordinal();
  }
  
  public final void a(arm paramarm)
  {
    d = paramarm;
  }
  
  public void a(vt paramvt, int paramInt)
  {
    paramvt.b(false);
    paramvt.a((vp)c.get(paramInt));
    if (d != null) {
      d.a(paramvt);
    }
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