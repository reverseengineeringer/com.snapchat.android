package android.support.v4.app;

import android.app.Notification;

final class NotificationCompat$NotificationCompatImplHoneycomb
  extends NotificationCompat.NotificationCompatImplBase
{
  public final Notification build(NotificationCompat.Builder paramBuilder)
  {
    return NotificationCompatHoneycomb.add(mContext, mNotification, mContentTitle, mContentText, mContentInfo, mTickerView, mNumber, mContentIntent, mFullScreenIntent, mLargeIcon);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.NotificationCompat.NotificationCompatImplHoneycomb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */