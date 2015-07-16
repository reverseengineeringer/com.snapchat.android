package android.support.v4.app;

import android.app.Notification;
import android.app.Service;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Build.VERSION;
import android.os.IBinder;
import kkkkkk.kkxxkk;
import kkkkkk.xkkkxk;

public abstract class NotificationCompatSideChannelService
  extends Service
{
  private void checkPermission(int paramInt, String paramString)
  {
    String[] arrayOfString = getPackageManager().getPackagesForUid(paramInt);
    int j = arrayOfString.length;
    int i = 0;
    while (i < j)
    {
      if (arrayOfString[i].equals(paramString)) {
        return;
      }
      i += 1;
    }
    throw new SecurityException("NotificationSideChannelService: Uid " + paramInt + " is not authorized for package " + paramString);
  }
  
  public abstract void cancel$2498c652();
  
  public abstract void cancelAll$552c4e01();
  
  public abstract void notify$3a20845c();
  
  public IBinder onBind(Intent paramIntent)
  {
    if ((!paramIntent.getAction().equals("android.support.BIND_NOTIFICATION_SIDE_CHANNEL")) || (Build.VERSION.SDK_INT > 19)) {
      return null;
    }
    return new NotificationSideChannelStub((byte)0);
  }
  
  public void onCreate()
  {
    kkxxkk.b041E041EОО041EО(getApplicationContext());
    xkkkxk.b041E041EООО041E(getApplicationContext());
    super.onCreate();
  }
  
  final class NotificationSideChannelStub
    extends INotificationSideChannel.Stub
  {
    private NotificationSideChannelStub() {}
    
    public final void cancel(String paramString1, int paramInt, String paramString2)
    {
      NotificationCompatSideChannelService.access$100(NotificationCompatSideChannelService.this, getCallingUid(), paramString1);
      restoreCallingIdentity(clearCallingIdentity());
    }
    
    public final void cancelAll(String paramString)
    {
      NotificationCompatSideChannelService.access$100(NotificationCompatSideChannelService.this, getCallingUid(), paramString);
      restoreCallingIdentity(clearCallingIdentity());
    }
    
    public final void notify(String paramString1, int paramInt, String paramString2, Notification paramNotification)
    {
      NotificationCompatSideChannelService.access$100(NotificationCompatSideChannelService.this, getCallingUid(), paramString1);
      restoreCallingIdentity(clearCallingIdentity());
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.NotificationCompatSideChannelService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */