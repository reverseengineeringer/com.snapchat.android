package android.support.v4.app;

import android.app.Notification;
import android.os.Bundle;

final class NotificationCompat$NotificationCompatImplApi21
  extends NotificationCompat.NotificationCompatImplApi20
{
  public final Notification build(NotificationCompat.Builder paramBuilder)
  {
    NotificationCompatApi21.Builder localBuilder = new NotificationCompatApi21.Builder(mContext, mNotification, mContentTitle, mContentText, mContentInfo, mTickerView, mNumber, mContentIntent, mFullScreenIntent, mLargeIcon, mProgressMax, mProgress, mProgressIndeterminate, mShowWhen, mUseChronometer, mPriority, mSubText, mLocalOnly, mCategory, mPeople, mExtras, mColor, mVisibility, mPublicVersion, mGroupKey, mGroupSummary, mSortKey);
    NotificationCompat.access$000(localBuilder, mActions);
    NotificationCompat.access$100(localBuilder, mStyle);
    return localBuilder.build();
  }
  
  public final Bundle getBundleForUnreadConversation(NotificationCompatBase.UnreadConversation paramUnreadConversation)
  {
    return NotificationCompatApi21.getBundleForUnreadConversation(paramUnreadConversation);
  }
  
  public final String getCategory(Notification paramNotification)
  {
    return NotificationCompatApi21.getCategory(paramNotification);
  }
  
  public final NotificationCompatBase.UnreadConversation getUnreadConversationFromBundle(Bundle paramBundle, NotificationCompatBase.UnreadConversation.Factory paramFactory, RemoteInputCompatBase.RemoteInput.Factory paramFactory1)
  {
    return NotificationCompatApi21.getUnreadConversationFromBundle(paramBundle, paramFactory, paramFactory1);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.NotificationCompat.NotificationCompatImplApi21
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */