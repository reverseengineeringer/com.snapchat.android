package android.support.v4.app;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

final class NotificationManagerCompat$SideChannelManager
  implements ServiceConnection, Handler.Callback
{
  private static final String KEY_BINDER = "binder";
  private static final int MSG_QUEUE_TASK = 0;
  private static final int MSG_RETRY_LISTENER_QUEUE = 3;
  private static final int MSG_SERVICE_CONNECTED = 1;
  private static final int MSG_SERVICE_DISCONNECTED = 2;
  private Set<String> mCachedEnabledPackages = new HashSet();
  private final Context mContext;
  final Handler mHandler;
  private final HandlerThread mHandlerThread;
  private final Map<ComponentName, ListenerRecord> mRecordMap = new HashMap();
  
  public NotificationManagerCompat$SideChannelManager(Context paramContext)
  {
    mContext = paramContext;
    mHandlerThread = new HandlerThread("NotificationManagerCompat");
    mHandlerThread.start();
    mHandler = new Handler(mHandlerThread.getLooper(), this);
  }
  
  private boolean ensureServiceBound(ListenerRecord paramListenerRecord)
  {
    if (bound) {
      return true;
    }
    Intent localIntent = new Intent("android.support.BIND_NOTIFICATION_SIDE_CHANNEL").setComponent(componentName);
    bound = mContext.bindService(localIntent, this, NotificationManagerCompat.access$000());
    if (bound) {
      retryCount = 0;
    }
    for (;;)
    {
      return bound;
      new StringBuilder("Unable to bind to listener ").append(componentName);
      mContext.unbindService(this);
    }
  }
  
  private void ensureServiceUnbound(ListenerRecord paramListenerRecord)
  {
    if (bound)
    {
      mContext.unbindService(this);
      bound = false;
    }
    service = null;
  }
  
  private void handleQueueTask(NotificationManagerCompat.Task paramTask)
  {
    Object localObject2 = NotificationManagerCompat.getEnabledListenerPackages(mContext);
    if (!((Set)localObject2).equals(mCachedEnabledPackages))
    {
      mCachedEnabledPackages = ((Set)localObject2);
      Object localObject3 = mContext.getPackageManager().queryIntentServices(new Intent().setAction("android.support.BIND_NOTIFICATION_SIDE_CHANNEL"), 4);
      localObject1 = new HashSet();
      localObject3 = ((List)localObject3).iterator();
      while (((Iterator)localObject3).hasNext())
      {
        ResolveInfo localResolveInfo = (ResolveInfo)((Iterator)localObject3).next();
        if (((Set)localObject2).contains(serviceInfo.packageName))
        {
          ComponentName localComponentName = new ComponentName(serviceInfo.packageName, serviceInfo.name);
          if (serviceInfo.permission != null) {
            new StringBuilder("Permission present on component ").append(localComponentName).append(", not adding listener record.");
          } else {
            ((Set)localObject1).add(localComponentName);
          }
        }
      }
      localObject2 = ((Set)localObject1).iterator();
      while (((Iterator)localObject2).hasNext())
      {
        localObject3 = (ComponentName)((Iterator)localObject2).next();
        if (!mRecordMap.containsKey(localObject3))
        {
          if (Log.isLoggable("NotifManCompat", 3)) {
            new StringBuilder("Adding listener record for ").append(localObject3);
          }
          mRecordMap.put(localObject3, new ListenerRecord((ComponentName)localObject3));
        }
      }
      localObject2 = mRecordMap.entrySet().iterator();
      while (((Iterator)localObject2).hasNext())
      {
        localObject3 = (Map.Entry)((Iterator)localObject2).next();
        if (!((Set)localObject1).contains(((Map.Entry)localObject3).getKey()))
        {
          if (Log.isLoggable("NotifManCompat", 3)) {
            new StringBuilder("Removing listener record for ").append(((Map.Entry)localObject3).getKey());
          }
          ensureServiceUnbound((ListenerRecord)((Map.Entry)localObject3).getValue());
          ((Iterator)localObject2).remove();
        }
      }
    }
    Object localObject1 = mRecordMap.values().iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (ListenerRecord)((Iterator)localObject1).next();
      taskQueue.add(paramTask);
      processListenerQueue((ListenerRecord)localObject2);
    }
  }
  
  private void handleRetryListenerQueue(ComponentName paramComponentName)
  {
    paramComponentName = (ListenerRecord)mRecordMap.get(paramComponentName);
    if (paramComponentName != null) {
      processListenerQueue(paramComponentName);
    }
  }
  
  private void handleServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    paramComponentName = (ListenerRecord)mRecordMap.get(paramComponentName);
    if (paramComponentName != null)
    {
      service = INotificationSideChannel.Stub.asInterface(paramIBinder);
      retryCount = 0;
      processListenerQueue(paramComponentName);
    }
  }
  
  private void handleServiceDisconnected(ComponentName paramComponentName)
  {
    paramComponentName = (ListenerRecord)mRecordMap.get(paramComponentName);
    if (paramComponentName != null) {
      ensureServiceUnbound(paramComponentName);
    }
  }
  
  private void processListenerQueue(ListenerRecord paramListenerRecord)
  {
    if (Log.isLoggable("NotifManCompat", 3)) {
      new StringBuilder("Processing component ").append(componentName).append(", ").append(taskQueue.size()).append(" queued tasks");
    }
    if (taskQueue.isEmpty()) {}
    for (;;)
    {
      return;
      boolean bool;
      if (bound)
      {
        bool = true;
        if ((!bool) || (service == null)) {
          scheduleListenerRetry(paramListenerRecord);
        }
      }
      else
      {
        localObject = new Intent("android.support.BIND_NOTIFICATION_SIDE_CHANNEL").setComponent(componentName);
        bound = mContext.bindService((Intent)localObject, this, NotificationManagerCompat.access$000());
        if (bound) {
          retryCount = 0;
        }
        for (;;)
        {
          bool = bound;
          break;
          new StringBuilder("Unable to bind to listener ").append(componentName);
          mContext.unbindService(this);
        }
      }
      Object localObject = (NotificationManagerCompat.Task)taskQueue.peek();
      if (localObject != null) {}
      try
      {
        if (Log.isLoggable("NotifManCompat", 3)) {
          new StringBuilder("Sending task ").append(localObject);
        }
        ((NotificationManagerCompat.Task)localObject).send(service);
        taskQueue.remove();
      }
      catch (DeadObjectException localDeadObjectException)
      {
        if (Log.isLoggable("NotifManCompat", 3)) {
          new StringBuilder("Remote service has died: ").append(componentName);
        }
        if (taskQueue.isEmpty()) {
          continue;
        }
        scheduleListenerRetry(paramListenerRecord);
        return;
      }
      catch (RemoteException localRemoteException)
      {
        for (;;)
        {
          new StringBuilder("RemoteException communicating with ").append(componentName);
        }
      }
    }
  }
  
  private void queueTask(NotificationManagerCompat.Task paramTask)
  {
    mHandler.obtainMessage(0, paramTask).sendToTarget();
  }
  
  private void scheduleListenerRetry(ListenerRecord paramListenerRecord)
  {
    if (mHandler.hasMessages(3, componentName)) {
      return;
    }
    retryCount += 1;
    if (retryCount > 6)
    {
      new StringBuilder("Giving up on delivering ").append(taskQueue.size()).append(" tasks to ").append(componentName).append(" after ").append(retryCount).append(" retries");
      taskQueue.clear();
      return;
    }
    int i = (1 << retryCount - 1) * 1000;
    if (Log.isLoggable("NotifManCompat", 3)) {
      new StringBuilder("Scheduling retry for ").append(i).append(" ms");
    }
    paramListenerRecord = mHandler.obtainMessage(3, componentName);
    mHandler.sendMessageDelayed(paramListenerRecord, i);
  }
  
  private void updateListenerMap()
  {
    Object localObject1 = NotificationManagerCompat.getEnabledListenerPackages(mContext);
    if (((Set)localObject1).equals(mCachedEnabledPackages)) {}
    for (;;)
    {
      return;
      mCachedEnabledPackages = ((Set)localObject1);
      Object localObject2 = mContext.getPackageManager().queryIntentServices(new Intent().setAction("android.support.BIND_NOTIFICATION_SIDE_CHANNEL"), 4);
      HashSet localHashSet = new HashSet();
      localObject2 = ((List)localObject2).iterator();
      while (((Iterator)localObject2).hasNext())
      {
        ResolveInfo localResolveInfo = (ResolveInfo)((Iterator)localObject2).next();
        if (((Set)localObject1).contains(serviceInfo.packageName))
        {
          ComponentName localComponentName = new ComponentName(serviceInfo.packageName, serviceInfo.name);
          if (serviceInfo.permission != null) {
            new StringBuilder("Permission present on component ").append(localComponentName).append(", not adding listener record.");
          } else {
            localHashSet.add(localComponentName);
          }
        }
      }
      localObject1 = localHashSet.iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (ComponentName)((Iterator)localObject1).next();
        if (!mRecordMap.containsKey(localObject2))
        {
          if (Log.isLoggable("NotifManCompat", 3)) {
            new StringBuilder("Adding listener record for ").append(localObject2);
          }
          mRecordMap.put(localObject2, new ListenerRecord((ComponentName)localObject2));
        }
      }
      localObject1 = mRecordMap.entrySet().iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (Map.Entry)((Iterator)localObject1).next();
        if (!localHashSet.contains(((Map.Entry)localObject2).getKey()))
        {
          if (Log.isLoggable("NotifManCompat", 3)) {
            new StringBuilder("Removing listener record for ").append(((Map.Entry)localObject2).getKey());
          }
          ensureServiceUnbound((ListenerRecord)((Map.Entry)localObject2).getValue());
          ((Iterator)localObject1).remove();
        }
      }
    }
  }
  
  public final boolean handleMessage(Message paramMessage)
  {
    Object localObject1;
    switch (what)
    {
    default: 
      return false;
    case 0: 
      paramMessage = (NotificationManagerCompat.Task)obj;
      Object localObject2 = NotificationManagerCompat.getEnabledListenerPackages(mContext);
      if (!((Set)localObject2).equals(mCachedEnabledPackages))
      {
        mCachedEnabledPackages = ((Set)localObject2);
        Object localObject3 = mContext.getPackageManager().queryIntentServices(new Intent().setAction("android.support.BIND_NOTIFICATION_SIDE_CHANNEL"), 4);
        localObject1 = new HashSet();
        localObject3 = ((List)localObject3).iterator();
        while (((Iterator)localObject3).hasNext())
        {
          ResolveInfo localResolveInfo = (ResolveInfo)((Iterator)localObject3).next();
          if (((Set)localObject2).contains(serviceInfo.packageName))
          {
            ComponentName localComponentName = new ComponentName(serviceInfo.packageName, serviceInfo.name);
            if (serviceInfo.permission != null) {
              new StringBuilder("Permission present on component ").append(localComponentName).append(", not adding listener record.");
            } else {
              ((Set)localObject1).add(localComponentName);
            }
          }
        }
        localObject2 = ((Set)localObject1).iterator();
        while (((Iterator)localObject2).hasNext())
        {
          localObject3 = (ComponentName)((Iterator)localObject2).next();
          if (!mRecordMap.containsKey(localObject3))
          {
            if (Log.isLoggable("NotifManCompat", 3)) {
              new StringBuilder("Adding listener record for ").append(localObject3);
            }
            mRecordMap.put(localObject3, new ListenerRecord((ComponentName)localObject3));
          }
        }
        localObject2 = mRecordMap.entrySet().iterator();
        while (((Iterator)localObject2).hasNext())
        {
          localObject3 = (Map.Entry)((Iterator)localObject2).next();
          if (!((Set)localObject1).contains(((Map.Entry)localObject3).getKey()))
          {
            if (Log.isLoggable("NotifManCompat", 3)) {
              new StringBuilder("Removing listener record for ").append(((Map.Entry)localObject3).getKey());
            }
            ensureServiceUnbound((ListenerRecord)((Map.Entry)localObject3).getValue());
            ((Iterator)localObject2).remove();
          }
        }
      }
      localObject1 = mRecordMap.values().iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (ListenerRecord)((Iterator)localObject1).next();
        taskQueue.add(paramMessage);
        processListenerQueue((ListenerRecord)localObject2);
      }
      return true;
    case 1: 
      localObject1 = (NotificationManagerCompat.ServiceConnectedEvent)obj;
      paramMessage = componentName;
      localObject1 = iBinder;
      paramMessage = (ListenerRecord)mRecordMap.get(paramMessage);
      if (paramMessage != null)
      {
        service = INotificationSideChannel.Stub.asInterface((IBinder)localObject1);
        retryCount = 0;
        processListenerQueue(paramMessage);
      }
      return true;
    case 2: 
      paramMessage = (ComponentName)obj;
      paramMessage = (ListenerRecord)mRecordMap.get(paramMessage);
      if (paramMessage != null) {
        ensureServiceUnbound(paramMessage);
      }
      return true;
    }
    paramMessage = (ComponentName)obj;
    paramMessage = (ListenerRecord)mRecordMap.get(paramMessage);
    if (paramMessage != null) {
      processListenerQueue(paramMessage);
    }
    return true;
  }
  
  public final void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    if (Log.isLoggable("NotifManCompat", 3)) {
      new StringBuilder("Connected to service ").append(paramComponentName);
    }
    mHandler.obtainMessage(1, new NotificationManagerCompat.ServiceConnectedEvent(paramComponentName, paramIBinder)).sendToTarget();
  }
  
  public final void onServiceDisconnected(ComponentName paramComponentName)
  {
    if (Log.isLoggable("NotifManCompat", 3)) {
      new StringBuilder("Disconnected from service ").append(paramComponentName);
    }
    mHandler.obtainMessage(2, paramComponentName).sendToTarget();
  }
  
  static final class ListenerRecord
  {
    public boolean bound = false;
    public final ComponentName componentName;
    public int retryCount = 0;
    public INotificationSideChannel service;
    public LinkedList<NotificationManagerCompat.Task> taskQueue = new LinkedList();
    
    public ListenerRecord(ComponentName paramComponentName)
    {
      componentName = paramComponentName;
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.NotificationManagerCompat.SideChannelManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */