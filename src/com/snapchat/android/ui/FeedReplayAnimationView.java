package com.snapchat.android.ui;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import cgb;
import cgc;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.model.chat.ChatFeedItem;
import com.snapchat.android.model.chat.ChatFeedItem.a;
import java.util.Iterator;
import java.util.List;

public class FeedReplayAnimationView
  extends FrivolousAnimationView
{
  protected static int a = 2130837840;
  protected static int b = 2130837551;
  
  public FeedReplayAnimationView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  private static boolean a(@cgb ChatFeedItem.a parama)
  {
    return System.currentTimeMillis() - frivolousAnimationTime <= 500L;
  }
  
  public void setDisplayedIcon(@cgc List<ChatFeedItem> paramList, @cgc ChatConversation paramChatConversation)
  {
    setBackgroundResource(0);
    c = Long.MIN_VALUE;
    Object localObject1 = null;
    if ((paramList == null) || (paramList.isEmpty())) {
      if ((paramChatConversation != null) && (mIsStub)) {
        localObject1 = new ChatFeedItem.a(a);
      }
    }
    while (localObject1 != null) {
      if (a((ChatFeedItem.a)localObject1))
      {
        a(frivolousAnimationTime);
        setIconResources(startResource, endResource);
        return;
        localObject1 = new ChatFeedItem.a(b);
        continue;
        if (paramList.size() == 1) {
          localObject1 = ((ChatFeedItem)paramList.get(0)).a(this, paramChatConversation);
        }
      }
      else
      {
        setIconResources(endResource, endResource);
        return;
      }
    }
    localObject1 = paramList.iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = ((ChatFeedItem)((Iterator)localObject1).next()).a(this, paramChatConversation);
      if ((localObject2 != null) && (a((ChatFeedItem.a)localObject2)))
      {
        a(frivolousAnimationTime);
        setIconResources(startResource, endResource);
        return;
      }
    }
    localObject1 = new AnimationDrawable();
    ((AnimationDrawable)localObject1).setOneShot(false);
    Object localObject2 = getResources();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      ChatFeedItem.a locala = ((ChatFeedItem)paramList.next()).a(this, paramChatConversation);
      if (locala != null) {
        ((AnimationDrawable)localObject1).addFrame(((Resources)localObject2).getDrawable(endResource), 1000);
      }
    }
    setBackgroundDrawable((Drawable)localObject1);
    ((AnimationDrawable)localObject1).start();
    setIconResources(0, 0);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.FeedReplayAnimationView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */