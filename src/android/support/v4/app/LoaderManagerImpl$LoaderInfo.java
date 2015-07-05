package android.support.v4.app;

import android.os.Bundle;
import android.support.v4.content.Loader;
import android.support.v4.content.Loader.OnLoadCompleteListener;
import android.support.v4.util.ContainerHelpers;
import android.support.v4.util.DebugUtils;
import android.support.v4.util.SparseArrayCompat;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;

final class LoaderManagerImpl$LoaderInfo
  implements Loader.OnLoadCompleteListener<Object>
{
  final Bundle mArgs;
  LoaderManager.LoaderCallbacks<Object> mCallbacks;
  Object mData;
  boolean mDeliveredData;
  boolean mDestroyed;
  boolean mHaveData;
  final int mId;
  boolean mListenerRegistered;
  Loader<Object> mLoader;
  LoaderInfo mPendingLoader;
  boolean mReportNextStart;
  boolean mRetaining;
  boolean mRetainingStarted;
  boolean mStarted;
  
  public LoaderManagerImpl$LoaderInfo(int paramInt, Bundle paramBundle)
  {
    mId = paramBundle;
    mArgs = null;
    LoaderManager.LoaderCallbacks localLoaderCallbacks;
    mCallbacks = localLoaderCallbacks;
  }
  
  private void finishRetain()
  {
    if (mRetaining)
    {
      if (LoaderManagerImpl.DEBUG) {
        new StringBuilder("  Finished Retaining: ").append(this);
      }
      mRetaining = false;
      if ((mStarted != mRetainingStarted) && (!mStarted)) {
        stop();
      }
    }
    if ((mStarted) && (mHaveData) && (!mReportNextStart)) {
      callOnLoadFinished(mLoader, mData);
    }
  }
  
  private void reportStart()
  {
    if ((mStarted) && (mReportNextStart))
    {
      mReportNextStart = false;
      if (mHaveData) {
        callOnLoadFinished(mLoader, mData);
      }
    }
  }
  
  private void retain()
  {
    if (LoaderManagerImpl.DEBUG) {
      new StringBuilder("  Retaining: ").append(this);
    }
    mRetaining = true;
    mRetainingStarted = mStarted;
    mStarted = false;
    mCallbacks = null;
  }
  
  final void callOnLoadFinished(Loader<Object> paramLoader, Object paramObject)
  {
    String str;
    if (mCallbacks != null)
    {
      if (this$0.mActivity == null) {
        break label147;
      }
      str = this$0.mActivity.mFragments.mNoTransactionsBecause;
      this$0.mActivity.mFragments.mNoTransactionsBecause = "onLoadFinished";
    }
    for (;;)
    {
      try
      {
        if (LoaderManagerImpl.DEBUG) {
          new StringBuilder("  onLoadFinished in ").append(paramLoader).append(": ").append(paramLoader.dataToString(paramObject));
        }
        mCallbacks.onLoadFinished(paramLoader, paramObject);
        if (this$0.mActivity != null) {
          this$0.mActivity.mFragments.mNoTransactionsBecause = str;
        }
        mDeliveredData = true;
        return;
      }
      finally
      {
        if (this$0.mActivity != null) {
          this$0.mActivity.mFragments.mNoTransactionsBecause = str;
        }
      }
      label147:
      str = null;
    }
  }
  
  /* Error */
  final void destroy()
  {
    // Byte code:
    //   0: aload_0
    //   1: astore_2
    //   2: getstatic 57	android/support/v4/app/LoaderManagerImpl:DEBUG	Z
    //   5: ifeq +17 -> 22
    //   8: new 59	java/lang/StringBuilder
    //   11: dup
    //   12: ldc -124
    //   14: invokespecial 64	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   17: aload_2
    //   18: invokevirtual 68	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   21: pop
    //   22: aload_2
    //   23: iconst_1
    //   24: putfield 134	android/support/v4/app/LoaderManagerImpl$LoaderInfo:mDestroyed	Z
    //   27: aload_2
    //   28: getfield 128	android/support/v4/app/LoaderManagerImpl$LoaderInfo:mDeliveredData	Z
    //   31: istore_1
    //   32: aload_2
    //   33: iconst_0
    //   34: putfield 128	android/support/v4/app/LoaderManagerImpl$LoaderInfo:mDeliveredData	Z
    //   37: aload_2
    //   38: getfield 48	android/support/v4/app/LoaderManagerImpl$LoaderInfo:mCallbacks	Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
    //   41: ifnull +117 -> 158
    //   44: aload_2
    //   45: getfield 81	android/support/v4/app/LoaderManagerImpl$LoaderInfo:mLoader	Landroid/support/v4/content/Loader;
    //   48: ifnull +110 -> 158
    //   51: aload_2
    //   52: getfield 77	android/support/v4/app/LoaderManagerImpl$LoaderInfo:mHaveData	Z
    //   55: ifeq +103 -> 158
    //   58: iload_1
    //   59: ifeq +99 -> 158
    //   62: getstatic 57	android/support/v4/app/LoaderManagerImpl:DEBUG	Z
    //   65: ifeq +17 -> 82
    //   68: new 59	java/lang/StringBuilder
    //   71: dup
    //   72: ldc -120
    //   74: invokespecial 64	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   77: aload_2
    //   78: invokevirtual 68	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   81: pop
    //   82: aload_2
    //   83: getfield 39	android/support/v4/app/LoaderManagerImpl$LoaderInfo:this$0	Landroid/support/v4/app/LoaderManagerImpl;
    //   86: getfield 95	android/support/v4/app/LoaderManagerImpl:mActivity	Landroid/support/v4/app/FragmentActivity;
    //   89: ifnull +163 -> 252
    //   92: aload_2
    //   93: getfield 39	android/support/v4/app/LoaderManagerImpl$LoaderInfo:this$0	Landroid/support/v4/app/LoaderManagerImpl;
    //   96: getfield 95	android/support/v4/app/LoaderManagerImpl:mActivity	Landroid/support/v4/app/FragmentActivity;
    //   99: getfield 101	android/support/v4/app/FragmentActivity:mFragments	Landroid/support/v4/app/FragmentManagerImpl;
    //   102: getfield 107	android/support/v4/app/FragmentManagerImpl:mNoTransactionsBecause	Ljava/lang/String;
    //   105: astore_3
    //   106: aload_2
    //   107: getfield 39	android/support/v4/app/LoaderManagerImpl$LoaderInfo:this$0	Landroid/support/v4/app/LoaderManagerImpl;
    //   110: getfield 95	android/support/v4/app/LoaderManagerImpl:mActivity	Landroid/support/v4/app/FragmentActivity;
    //   113: getfield 101	android/support/v4/app/FragmentActivity:mFragments	Landroid/support/v4/app/FragmentManagerImpl;
    //   116: ldc -118
    //   118: putfield 107	android/support/v4/app/FragmentManagerImpl:mNoTransactionsBecause	Ljava/lang/String;
    //   121: aload_2
    //   122: getfield 48	android/support/v4/app/LoaderManagerImpl$LoaderInfo:mCallbacks	Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
    //   125: aload_2
    //   126: getfield 81	android/support/v4/app/LoaderManagerImpl$LoaderInfo:mLoader	Landroid/support/v4/content/Loader;
    //   129: invokeinterface 141 2 0
    //   134: aload_2
    //   135: getfield 39	android/support/v4/app/LoaderManagerImpl$LoaderInfo:this$0	Landroid/support/v4/app/LoaderManagerImpl;
    //   138: getfield 95	android/support/v4/app/LoaderManagerImpl:mActivity	Landroid/support/v4/app/FragmentActivity;
    //   141: ifnull +17 -> 158
    //   144: aload_2
    //   145: getfield 39	android/support/v4/app/LoaderManagerImpl$LoaderInfo:this$0	Landroid/support/v4/app/LoaderManagerImpl;
    //   148: getfield 95	android/support/v4/app/LoaderManagerImpl:mActivity	Landroid/support/v4/app/FragmentActivity;
    //   151: getfield 101	android/support/v4/app/FragmentActivity:mFragments	Landroid/support/v4/app/FragmentManagerImpl;
    //   154: aload_3
    //   155: putfield 107	android/support/v4/app/FragmentManagerImpl:mNoTransactionsBecause	Ljava/lang/String;
    //   158: aload_2
    //   159: aconst_null
    //   160: putfield 48	android/support/v4/app/LoaderManagerImpl$LoaderInfo:mCallbacks	Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
    //   163: aload_2
    //   164: aconst_null
    //   165: putfield 83	android/support/v4/app/LoaderManagerImpl$LoaderInfo:mData	Ljava/lang/Object;
    //   168: aload_2
    //   169: iconst_0
    //   170: putfield 77	android/support/v4/app/LoaderManagerImpl$LoaderInfo:mHaveData	Z
    //   173: aload_2
    //   174: getfield 81	android/support/v4/app/LoaderManagerImpl$LoaderInfo:mLoader	Landroid/support/v4/content/Loader;
    //   177: ifnull +30 -> 207
    //   180: aload_2
    //   181: getfield 143	android/support/v4/app/LoaderManagerImpl$LoaderInfo:mListenerRegistered	Z
    //   184: ifeq +16 -> 200
    //   187: aload_2
    //   188: iconst_0
    //   189: putfield 143	android/support/v4/app/LoaderManagerImpl$LoaderInfo:mListenerRegistered	Z
    //   192: aload_2
    //   193: getfield 81	android/support/v4/app/LoaderManagerImpl$LoaderInfo:mLoader	Landroid/support/v4/content/Loader;
    //   196: aload_2
    //   197: invokevirtual 147	android/support/v4/content/Loader:unregisterListener	(Landroid/support/v4/content/Loader$OnLoadCompleteListener;)V
    //   200: aload_2
    //   201: getfield 81	android/support/v4/app/LoaderManagerImpl$LoaderInfo:mLoader	Landroid/support/v4/content/Loader;
    //   204: invokevirtual 150	android/support/v4/content/Loader:reset	()V
    //   207: aload_2
    //   208: getfield 152	android/support/v4/app/LoaderManagerImpl$LoaderInfo:mPendingLoader	Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
    //   211: ifnull +40 -> 251
    //   214: aload_2
    //   215: getfield 152	android/support/v4/app/LoaderManagerImpl$LoaderInfo:mPendingLoader	Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
    //   218: astore_2
    //   219: goto -217 -> 2
    //   222: astore 4
    //   224: aload_2
    //   225: getfield 39	android/support/v4/app/LoaderManagerImpl$LoaderInfo:this$0	Landroid/support/v4/app/LoaderManagerImpl;
    //   228: getfield 95	android/support/v4/app/LoaderManagerImpl:mActivity	Landroid/support/v4/app/FragmentActivity;
    //   231: ifnull +17 -> 248
    //   234: aload_2
    //   235: getfield 39	android/support/v4/app/LoaderManagerImpl$LoaderInfo:this$0	Landroid/support/v4/app/LoaderManagerImpl;
    //   238: getfield 95	android/support/v4/app/LoaderManagerImpl:mActivity	Landroid/support/v4/app/FragmentActivity;
    //   241: getfield 101	android/support/v4/app/FragmentActivity:mFragments	Landroid/support/v4/app/FragmentManagerImpl;
    //   244: aload_3
    //   245: putfield 107	android/support/v4/app/FragmentManagerImpl:mNoTransactionsBecause	Ljava/lang/String;
    //   248: aload 4
    //   250: athrow
    //   251: return
    //   252: aconst_null
    //   253: astore_3
    //   254: goto -133 -> 121
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	257	0	this	LoaderInfo
    //   31	28	1	bool	boolean
    //   1	234	2	localLoaderInfo	LoaderInfo
    //   105	149	3	str	String
    //   222	27	4	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   121	134	222	finally
  }
  
  public final void dump(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    String str = paramString;
    paramString = this;
    for (;;)
    {
      paramPrintWriter.print(str);
      paramPrintWriter.print("mId=");
      paramPrintWriter.print(mId);
      paramPrintWriter.print(" mArgs=");
      paramPrintWriter.println(mArgs);
      paramPrintWriter.print(str);
      paramPrintWriter.print("mCallbacks=");
      paramPrintWriter.println(mCallbacks);
      paramPrintWriter.print(str);
      paramPrintWriter.print("mLoader=");
      paramPrintWriter.println(mLoader);
      if (mLoader != null) {
        mLoader.dump(str + "  ", paramFileDescriptor, paramPrintWriter, paramArrayOfString);
      }
      if ((mHaveData) || (mDeliveredData))
      {
        paramPrintWriter.print(str);
        paramPrintWriter.print("mHaveData=");
        paramPrintWriter.print(mHaveData);
        paramPrintWriter.print("  mDeliveredData=");
        paramPrintWriter.println(mDeliveredData);
        paramPrintWriter.print(str);
        paramPrintWriter.print("mData=");
        paramPrintWriter.println(mData);
      }
      paramPrintWriter.print(str);
      paramPrintWriter.print("mStarted=");
      paramPrintWriter.print(mStarted);
      paramPrintWriter.print(" mReportNextStart=");
      paramPrintWriter.print(mReportNextStart);
      paramPrintWriter.print(" mDestroyed=");
      paramPrintWriter.println(mDestroyed);
      paramPrintWriter.print(str);
      paramPrintWriter.print("mRetaining=");
      paramPrintWriter.print(mRetaining);
      paramPrintWriter.print(" mRetainingStarted=");
      paramPrintWriter.print(mRetainingStarted);
      paramPrintWriter.print(" mListenerRegistered=");
      paramPrintWriter.println(mListenerRegistered);
      if (mPendingLoader == null) {
        break;
      }
      paramPrintWriter.print(str);
      paramPrintWriter.println("Pending Loader ");
      paramPrintWriter.print(mPendingLoader);
      paramPrintWriter.println(":");
      paramString = mPendingLoader;
      str = str + "  ";
    }
  }
  
  public final void onLoadComplete(Loader<Object> paramLoader, Object paramObject)
  {
    if (LoaderManagerImpl.DEBUG) {
      new StringBuilder("onLoadComplete: ").append(this);
    }
    if (mDestroyed) {}
    do
    {
      do
      {
        return;
      } while (this$0.mLoaders.get(mId) != this);
      LoaderInfo localLoaderInfo = mPendingLoader;
      if (localLoaderInfo != null)
      {
        if (LoaderManagerImpl.DEBUG) {
          new StringBuilder("  Switching to pending loader: ").append(localLoaderInfo);
        }
        mPendingLoader = null;
        this$0.mLoaders.put(mId, null);
        destroy();
        this$0.installLoader(localLoaderInfo);
        return;
      }
      if ((mData != paramObject) || (!mHaveData))
      {
        mData = paramObject;
        mHaveData = true;
        if (mStarted) {
          callOnLoadFinished(paramLoader, paramObject);
        }
      }
      paramLoader = (LoaderInfo)this$0.mInactiveLoaders.get(mId);
      if ((paramLoader != null) && (paramLoader != this))
      {
        mDeliveredData = false;
        paramLoader.destroy();
        paramLoader = this$0.mInactiveLoaders;
        int i = mId;
        i = ContainerHelpers.binarySearch(mKeys, mSize, i);
        if ((i >= 0) && (mValues[i] != SparseArrayCompat.DELETED))
        {
          mValues[i] = SparseArrayCompat.DELETED;
          mGarbage = true;
        }
      }
    } while ((this$0.mActivity == null) || (this$0.hasRunningLoaders()));
    this$0.mActivity.mFragments.startPendingDeferredFragments();
  }
  
  final void start()
  {
    if ((mRetaining) && (mRetainingStarted)) {
      mStarted = true;
    }
    do
    {
      do
      {
        return;
      } while (mStarted);
      mStarted = true;
      if (LoaderManagerImpl.DEBUG) {
        new StringBuilder("  Starting: ").append(this);
      }
      if ((mLoader == null) && (mCallbacks != null)) {
        mLoader = mCallbacks.onCreateLoader(mId, mArgs);
      }
    } while (mLoader == null);
    if ((mLoader.getClass().isMemberClass()) && (!Modifier.isStatic(mLoader.getClass().getModifiers()))) {
      throw new IllegalArgumentException("Object returned from onCreateLoader must not be a non-static inner member class: " + mLoader);
    }
    if (!mListenerRegistered)
    {
      mLoader.registerListener(mId, this);
      mListenerRegistered = true;
    }
    mLoader.startLoading();
  }
  
  final void stop()
  {
    if (LoaderManagerImpl.DEBUG) {
      new StringBuilder("  Stopping: ").append(this);
    }
    mStarted = false;
    if ((!mRetaining) && (mLoader != null) && (mListenerRegistered))
    {
      mListenerRegistered = false;
      mLoader.unregisterListener(this);
      mLoader.stopLoading();
    }
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(64);
    localStringBuilder.append("LoaderInfo{");
    localStringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
    localStringBuilder.append(" #");
    localStringBuilder.append(mId);
    localStringBuilder.append(" : ");
    DebugUtils.buildShortClassTag(mLoader, localStringBuilder);
    localStringBuilder.append("}}");
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.LoaderManagerImpl.LoaderInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */