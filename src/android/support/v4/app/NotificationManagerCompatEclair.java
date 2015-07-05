package android.support.v4.app;

import android.app.Notification;
import android.app.NotificationManager;

final class NotificationManagerCompatEclair
{
  static void cancelNotification$21184a1(NotificationManager paramNotificationManager, int paramInt)
  {
    paramNotificationManager.cancel(null, paramInt);
  }
  
  public static void postNotification$62d42cd7(NotificationManager paramNotificationManager, int paramInt, Notification paramNotification)
  {
    paramNotificationManager.notify(null, paramInt, paramNotification);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.NotificationManagerCompatEclair
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */