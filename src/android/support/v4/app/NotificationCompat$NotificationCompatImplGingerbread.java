package android.support.v4.app;

import android.app.Notification;

final class NotificationCompat$NotificationCompatImplGingerbread
  extends NotificationCompat.NotificationCompatImplBase
{
  public final Notification build(NotificationCompat.Builder paramBuilder)
  {
    Notification localNotification = mNotification;
    localNotification.setLatestEventInfo(mContext, mContentTitle, mContentText, mContentIntent);
    localNotification = NotificationCompatGingerbread.add(localNotification, mContext, mContentTitle, mContentText, mContentIntent, mFullScreenIntent);
    if (mPriority > 0) {
      flags |= 0x80;
    }
    return localNotification;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.NotificationCompat.NotificationCompatImplGingerbread
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */