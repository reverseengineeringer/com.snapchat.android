package android.support.v4.content;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Set;

public final class LocalBroadcastManager
{
  private static final boolean DEBUG = false;
  static final int MSG_EXEC_PENDING_BROADCASTS = 1;
  private static final String TAG = "LocalBroadcastManager";
  private static LocalBroadcastManager mInstance;
  private static final Object mLock = new Object();
  private final HashMap<String, ArrayList<ReceiverRecord>> mActions = new HashMap();
  private final Context mAppContext;
  private final Handler mHandler;
  private final ArrayList<BroadcastRecord> mPendingBroadcasts = new ArrayList();
  private final HashMap<BroadcastReceiver, ArrayList<IntentFilter>> mReceivers = new HashMap();
  
  private LocalBroadcastManager(Context paramContext)
  {
    mAppContext = paramContext;
    mHandler = new Handler(paramContext.getMainLooper())
    {
      public final void handleMessage(Message paramAnonymousMessage)
      {
        switch (what)
        {
        default: 
          super.handleMessage(paramAnonymousMessage);
          return;
        }
        LocalBroadcastManager.this.executePendingBroadcasts();
      }
    };
  }
  
  private void executePendingBroadcasts()
  {
    for (;;)
    {
      int i;
      synchronized (mReceivers)
      {
        i = mPendingBroadcasts.size();
        if (i <= 0) {
          return;
        }
        BroadcastRecord[] arrayOfBroadcastRecord = new BroadcastRecord[i];
        mPendingBroadcasts.toArray(arrayOfBroadcastRecord);
        mPendingBroadcasts.clear();
        i = 0;
        if (i >= arrayOfBroadcastRecord.length) {
          continue;
        }
        ??? = arrayOfBroadcastRecord[i];
        int j = 0;
        if (j < receivers.size())
        {
          receivers.get(j)).receiver.onReceive(mAppContext, intent);
          j += 1;
        }
      }
      i += 1;
    }
  }
  
  private static LocalBroadcastManager getInstance(Context paramContext)
  {
    synchronized (mLock)
    {
      if (mInstance == null) {
        mInstance = new LocalBroadcastManager(paramContext.getApplicationContext());
      }
      paramContext = mInstance;
      return paramContext;
    }
  }
  
  private void registerReceiver(BroadcastReceiver paramBroadcastReceiver, IntentFilter paramIntentFilter)
  {
    synchronized (mReceivers)
    {
      ReceiverRecord localReceiverRecord = new ReceiverRecord(paramIntentFilter, paramBroadcastReceiver);
      Object localObject2 = (ArrayList)mReceivers.get(paramBroadcastReceiver);
      Object localObject1 = localObject2;
      if (localObject2 == null)
      {
        localObject1 = new ArrayList(1);
        mReceivers.put(paramBroadcastReceiver, localObject1);
      }
      ((ArrayList)localObject1).add(paramIntentFilter);
      int i = 0;
      while (i < paramIntentFilter.countActions())
      {
        localObject2 = paramIntentFilter.getAction(i);
        localObject1 = (ArrayList)mActions.get(localObject2);
        paramBroadcastReceiver = (BroadcastReceiver)localObject1;
        if (localObject1 == null)
        {
          paramBroadcastReceiver = new ArrayList(1);
          mActions.put(localObject2, paramBroadcastReceiver);
        }
        paramBroadcastReceiver.add(localReceiverRecord);
        i += 1;
      }
      return;
    }
  }
  
  private boolean sendBroadcast(Intent paramIntent)
  {
    for (;;)
    {
      synchronized (mReceivers)
      {
        String str1 = paramIntent.getAction();
        String str2 = paramIntent.resolveTypeIfNeeded(mAppContext.getContentResolver());
        Uri localUri = paramIntent.getData();
        String str3 = paramIntent.getScheme();
        Set localSet = paramIntent.getCategories();
        if ((paramIntent.getFlags() & 0x8) == 0) {
          break label387;
        }
        i = 1;
        if (i != 0) {
          new StringBuilder("Resolving type ").append(str2).append(" scheme ").append(str3).append(" of intent ").append(paramIntent);
        }
        ArrayList localArrayList2 = (ArrayList)mActions.get(paramIntent.getAction());
        if (localArrayList2 == null) {
          break label361;
        }
        if (i == 0) {
          break label372;
        }
        new StringBuilder("Action list: ").append(localArrayList2);
        break label372;
        if (j < localArrayList2.size())
        {
          ReceiverRecord localReceiverRecord = (ReceiverRecord)localArrayList2.get(j);
          if (i != 0) {
            new StringBuilder("Matching against filter ").append(filter);
          }
          if (broadcasting)
          {
            if (i == 0) {
              break label369;
            }
            break label380;
          }
          int k = filter.match(str1, str2, str3, localUri, localSet, "LocalBroadcastManager");
          if (k < 0) {
            break label369;
          }
          if (i != 0) {
            new StringBuilder("  Filter matched!  match=0x").append(Integer.toHexString(k));
          }
          if (localArrayList1 != null) {
            break label366;
          }
          localArrayList1 = new ArrayList();
          localArrayList1.add(localReceiverRecord);
          broadcasting = true;
        }
      }
      if (localArrayList1 != null)
      {
        i = 0;
        while (i < localArrayList1.size())
        {
          getbroadcasting = false;
          i += 1;
        }
        mPendingBroadcasts.add(new BroadcastRecord(paramIntent, localArrayList1));
        if (!mHandler.hasMessages(1)) {
          mHandler.sendEmptyMessage(1);
        }
        return true;
      }
      label361:
      return false;
      label366:
      continue;
      label369:
      break label380;
      label372:
      ArrayList localArrayList1 = null;
      int j = 0;
      continue;
      label380:
      j += 1;
      continue;
      label387:
      int i = 0;
    }
  }
  
  private void sendBroadcastSync(Intent paramIntent)
  {
    if (sendBroadcast(paramIntent)) {
      executePendingBroadcasts();
    }
  }
  
  private void unregisterReceiver(BroadcastReceiver paramBroadcastReceiver)
  {
    for (;;)
    {
      int k;
      int i;
      synchronized (mReceivers)
      {
        ArrayList localArrayList1 = (ArrayList)mReceivers.remove(paramBroadcastReceiver);
        if (localArrayList1 != null) {
          break label167;
        }
        return;
        if (j < localArrayList1.size())
        {
          IntentFilter localIntentFilter = (IntentFilter)localArrayList1.get(j);
          k = 0;
          if (k >= localIntentFilter.countActions()) {
            break label188;
          }
          String str = localIntentFilter.getAction(k);
          ArrayList localArrayList2 = (ArrayList)mActions.get(str);
          if (localArrayList2 == null) {
            break label179;
          }
          i = 0;
          if (i < localArrayList2.size())
          {
            if (getreceiver == paramBroadcastReceiver)
            {
              localArrayList2.remove(i);
              i -= 1;
              break label172;
            }
          }
          else
          {
            if (localArrayList2.size() > 0) {
              break label179;
            }
            mActions.remove(str);
            break label179;
          }
        }
        else
        {
          return;
        }
      }
      break label172;
      label167:
      int j = 0;
      continue;
      label172:
      i += 1;
      continue;
      label179:
      k += 1;
      continue;
      label188:
      j += 1;
    }
  }
  
  static final class BroadcastRecord
  {
    final Intent intent;
    final ArrayList<LocalBroadcastManager.ReceiverRecord> receivers;
    
    BroadcastRecord(Intent paramIntent, ArrayList<LocalBroadcastManager.ReceiverRecord> paramArrayList)
    {
      intent = paramIntent;
      receivers = paramArrayList;
    }
  }
  
  static final class ReceiverRecord
  {
    boolean broadcasting;
    final IntentFilter filter;
    final BroadcastReceiver receiver;
    
    ReceiverRecord(IntentFilter paramIntentFilter, BroadcastReceiver paramBroadcastReceiver)
    {
      filter = paramIntentFilter;
      receiver = paramBroadcastReceiver;
    }
    
    public final String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder(128);
      localStringBuilder.append("Receiver{");
      localStringBuilder.append(receiver);
      localStringBuilder.append(" filter=");
      localStringBuilder.append(filter);
      localStringBuilder.append("}");
      return localStringBuilder.toString();
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.content.LocalBroadcastManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */