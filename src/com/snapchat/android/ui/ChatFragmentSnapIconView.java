package com.snapchat.android.ui;

import aji;
import android.content.Context;
import android.util.AttributeSet;
import cgb;
import com.snapchat.android.model.Snap;
import com.snapchat.android.model.Snap.ClientSnapStatus;
import com.snapchat.android.model.chat.ChatFeedItem.a;

public class ChatFragmentSnapIconView
  extends FrivolousAnimationView
{
  public ChatFragmentSnapIconView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public void setDisplayedIcon(@cgb Snap paramSnap)
  {
    c = Long.MIN_VALUE;
    Snap.ClientSnapStatus localClientSnapStatus = paramSnap.ah();
    if (localClientSnapStatus == Snap.ClientSnapStatus.SENT_AND_SCREENSHOTTED) {
      if ((paramSnap instanceof aji))
      {
        i = paramSnap.ae();
        setIconResources(i, i);
      }
    }
    do
    {
      return;
      i = paramSnap.ad();
      break;
      if (localClientSnapStatus == Snap.ClientSnapStatus.SENT_AND_REPLAYED_AND_SCREENSHOTTED)
      {
        i = paramSnap.af();
        setIconResources(i, i);
        return;
      }
      paramSnap = paramSnap.a(this, null);
    } while (paramSnap == null);
    if (System.currentTimeMillis() - frivolousAnimationTime <= 500L) {}
    for (int i = 1; i != 0; i = 0)
    {
      a(frivolousAnimationTime);
      setIconResources(startResource, endResource);
      return;
    }
    setIconResources(endResource, endResource);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.ChatFragmentSnapIconView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */