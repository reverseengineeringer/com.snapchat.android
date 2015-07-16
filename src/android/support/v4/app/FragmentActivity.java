package android.support.v4.app;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Parcelable;
import android.support.v4.util.SimpleArrayMap;
import android.support.v4.util.SparseArrayCompat;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import kkkkkk.kkxxkk;
import kkkkkk.xkkkxk;
import q;

public class FragmentActivity
  extends Activity
{
  static final String FRAGMENTS_TAG = "android:support:fragments";
  private static final int HONEYCOMB = 11;
  static final int MSG_REALLY_STOPPED = 1;
  static final int MSG_RESUME_PENDING = 2;
  private static final String TAG = "FragmentActivity";
  SimpleArrayMap<String, LoaderManagerImpl> mAllLoaderManagers;
  boolean mCheckedForLoaderManager;
  final FragmentContainer mContainer = new FragmentContainer()
  {
    public final View findViewById(int paramAnonymousInt)
    {
      return FragmentActivity.this.findViewById(paramAnonymousInt);
    }
    
    public final boolean hasView()
    {
      Window localWindow = getWindow();
      return (localWindow != null) && (localWindow.peekDecorView() != null);
    }
  };
  boolean mCreated;
  public final FragmentManagerImpl mFragments = new FragmentManagerImpl();
  final Handler mHandler = new Handler()
  {
    public final void handleMessage(Message paramAnonymousMessage)
    {
      switch (what)
      {
      default: 
        super.handleMessage(paramAnonymousMessage);
      case 1: 
        do
        {
          return;
        } while (!mStopped);
        doReallyStop(false);
        return;
      }
      mFragments.dispatchResume();
      mFragments.execPendingActions();
    }
  };
  LoaderManagerImpl mLoaderManager;
  boolean mLoadersStarted;
  boolean mOptionsMenuInvalidated;
  boolean mReallyStopped;
  boolean mResumed;
  boolean mRetaining;
  boolean mStopped;
  
  private void dumpViewHierarchy(String paramString, PrintWriter paramPrintWriter, View paramView)
  {
    paramPrintWriter.print(paramString);
    if (paramView == null) {
      paramPrintWriter.println("null");
    }
    for (;;)
    {
      return;
      paramPrintWriter.println(viewToString(paramView));
      if ((paramView instanceof ViewGroup))
      {
        paramView = (ViewGroup)paramView;
        int j = paramView.getChildCount();
        if (j > 0)
        {
          paramString = paramString + "  ";
          int i = 0;
          while (i < j)
          {
            dumpViewHierarchy(paramString, paramPrintWriter, paramView.getChildAt(i));
            i += 1;
          }
        }
      }
    }
  }
  
  private Object getLastCustomNonConfigurationInstance()
  {
    NonConfigurationInstances localNonConfigurationInstances = (NonConfigurationInstances)getLastNonConfigurationInstance();
    if (localNonConfigurationInstances != null) {
      return custom;
    }
    return null;
  }
  
  private FragmentManager getSupportFragmentManager()
  {
    return mFragments;
  }
  
  private static void onAttachFragment$65850823() {}
  
  private boolean onPrepareOptionsPanel(View paramView, Menu paramMenu)
  {
    return super.onPreparePanel(0, paramView, paramMenu);
  }
  
  private void onReallyStop()
  {
    if (mLoadersStarted)
    {
      mLoadersStarted = false;
      if (mLoaderManager != null)
      {
        if (mRetaining) {
          break label42;
        }
        mLoaderManager.doStop();
      }
    }
    for (;;)
    {
      mFragments.moveToState$2563266(2);
      return;
      label42:
      mLoaderManager.doRetain();
    }
  }
  
  private void onResumeFragments()
  {
    mFragments.dispatchResume();
  }
  
  private static Object onRetainCustomNonConfigurationInstance()
  {
    return null;
  }
  
  private void setEnterSharedElementCallback(SharedElementCallback paramSharedElementCallback)
  {
    if (Build.VERSION.SDK_INT >= 21) {
      ActivityCompat21.setEnterSharedElementCallback(this, ActivityCompat.createCallback(paramSharedElementCallback));
    }
  }
  
  private void setExitSharedElementCallback(SharedElementCallback paramSharedElementCallback)
  {
    if (Build.VERSION.SDK_INT >= 21) {
      ActivityCompat21.setExitSharedElementCallback(this, ActivityCompat.createCallback(paramSharedElementCallback));
    }
  }
  
  private void supportFinishAfterTransition()
  {
    if (Build.VERSION.SDK_INT >= 21)
    {
      ActivityCompat21.finishAfterTransition(this);
      return;
    }
    finish();
  }
  
  private void supportPostponeEnterTransition()
  {
    if (Build.VERSION.SDK_INT >= 21) {
      ActivityCompat21.postponeEnterTransition(this);
    }
  }
  
  private void supportStartPostponedEnterTransition()
  {
    if (Build.VERSION.SDK_INT >= 21) {
      ActivityCompat21.startPostponedEnterTransition(this);
    }
  }
  
  private static String viewToString(View paramView)
  {
    char c3 = 'F';
    char c2 = '.';
    StringBuilder localStringBuilder = new StringBuilder(128);
    localStringBuilder.append(paramView.getClass().getName());
    localStringBuilder.append('{');
    localStringBuilder.append(Integer.toHexString(System.identityHashCode(paramView)));
    localStringBuilder.append(' ');
    char c1;
    label118:
    label135:
    label152:
    label169:
    label186:
    label203:
    label220:
    label244:
    label261:
    int i;
    Object localObject;
    switch (paramView.getVisibility())
    {
    default: 
      localStringBuilder.append('.');
      if (paramView.isFocusable())
      {
        c1 = 'F';
        localStringBuilder.append(c1);
        if (!paramView.isEnabled()) {
          break label570;
        }
        c1 = 'E';
        localStringBuilder.append(c1);
        if (!paramView.willNotDraw()) {
          break label576;
        }
        c1 = '.';
        localStringBuilder.append(c1);
        if (!paramView.isHorizontalScrollBarEnabled()) {
          break label582;
        }
        c1 = 'H';
        localStringBuilder.append(c1);
        if (!paramView.isVerticalScrollBarEnabled()) {
          break label588;
        }
        c1 = 'V';
        localStringBuilder.append(c1);
        if (!paramView.isClickable()) {
          break label594;
        }
        c1 = 'C';
        localStringBuilder.append(c1);
        if (!paramView.isLongClickable()) {
          break label600;
        }
        c1 = 'L';
        localStringBuilder.append(c1);
        localStringBuilder.append(' ');
        if (!paramView.isFocused()) {
          break label606;
        }
        c1 = c3;
        localStringBuilder.append(c1);
        if (!paramView.isSelected()) {
          break label612;
        }
        c1 = 'S';
        localStringBuilder.append(c1);
        c1 = c2;
        if (paramView.isPressed()) {
          c1 = 'P';
        }
        localStringBuilder.append(c1);
        localStringBuilder.append(' ');
        localStringBuilder.append(paramView.getLeft());
        localStringBuilder.append(',');
        localStringBuilder.append(paramView.getTop());
        localStringBuilder.append('-');
        localStringBuilder.append(paramView.getRight());
        localStringBuilder.append(',');
        localStringBuilder.append(paramView.getBottom());
        i = paramView.getId();
        if (i != -1)
        {
          localStringBuilder.append(" #");
          localStringBuilder.append(Integer.toHexString(i));
          localObject = paramView.getResources();
          if ((i != 0) && (localObject != null)) {
            switch (0xFF000000 & i)
            {
            }
          }
        }
      }
      break;
    }
    for (;;)
    {
      try
      {
        paramView = ((Resources)localObject).getResourcePackageName(i);
        String str = ((Resources)localObject).getResourceTypeName(i);
        localObject = ((Resources)localObject).getResourceEntryName(i);
        localStringBuilder.append(" ");
        localStringBuilder.append(paramView);
        localStringBuilder.append(":");
        localStringBuilder.append(str);
        localStringBuilder.append("/");
        localStringBuilder.append((String)localObject);
      }
      catch (Resources.NotFoundException paramView)
      {
        label570:
        label576:
        label582:
        label588:
        label594:
        label600:
        label606:
        label612:
        continue;
      }
      localStringBuilder.append("}");
      return localStringBuilder.toString();
      localStringBuilder.append('V');
      break;
      localStringBuilder.append('I');
      break;
      localStringBuilder.append('G');
      break;
      c1 = '.';
      break label118;
      c1 = '.';
      break label135;
      c1 = 'D';
      break label152;
      c1 = '.';
      break label169;
      c1 = '.';
      break label186;
      c1 = '.';
      break label203;
      c1 = '.';
      break label220;
      c1 = '.';
      break label244;
      c1 = '.';
      break label261;
      paramView = "app";
      continue;
      paramView = "android";
    }
  }
  
  final void doReallyStop(boolean paramBoolean)
  {
    if (!mReallyStopped)
    {
      mReallyStopped = true;
      mRetaining = paramBoolean;
      mHandler.removeMessages(1);
      if (mLoadersStarted)
      {
        mLoadersStarted = false;
        if (mLoaderManager != null)
        {
          if (mRetaining) {
            break label67;
          }
          mLoaderManager.doStop();
        }
      }
    }
    for (;;)
    {
      mFragments.moveToState$2563266(2);
      return;
      label67:
      mLoaderManager.doRetain();
    }
  }
  
  public void dump(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    int i = Build.VERSION.SDK_INT;
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("Local FragmentActivity ");
    paramPrintWriter.print(Integer.toHexString(System.identityHashCode(this)));
    paramPrintWriter.println(" State:");
    String str = paramString + "  ";
    paramPrintWriter.print(str);
    paramPrintWriter.print("mCreated=");
    paramPrintWriter.print(mCreated);
    paramPrintWriter.print("mResumed=");
    paramPrintWriter.print(mResumed);
    paramPrintWriter.print(" mStopped=");
    paramPrintWriter.print(mStopped);
    paramPrintWriter.print(" mReallyStopped=");
    paramPrintWriter.println(mReallyStopped);
    paramPrintWriter.print(str);
    paramPrintWriter.print("mLoadersStarted=");
    paramPrintWriter.println(mLoadersStarted);
    if (mLoaderManager != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("Loader Manager ");
      paramPrintWriter.print(Integer.toHexString(System.identityHashCode(mLoaderManager)));
      paramPrintWriter.println(":");
      mLoaderManager.dump(paramString + "  ", paramFileDescriptor, paramPrintWriter, paramArrayOfString);
    }
    mFragments.dump(paramString, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
    paramPrintWriter.print(paramString);
    paramPrintWriter.println("View Hierarchy:");
    dumpViewHierarchy(paramString + "  ", paramPrintWriter, getWindow().getDecorView());
  }
  
  final LoaderManagerImpl getLoaderManager(String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (mAllLoaderManagers == null) {
      mAllLoaderManagers = new SimpleArrayMap();
    }
    LoaderManagerImpl localLoaderManagerImpl = (LoaderManagerImpl)mAllLoaderManagers.get(paramString);
    if (localLoaderManagerImpl == null)
    {
      if (paramBoolean2)
      {
        localLoaderManagerImpl = new LoaderManagerImpl(paramString, this, paramBoolean1);
        mAllLoaderManagers.put(paramString, localLoaderManagerImpl);
      }
      return localLoaderManagerImpl;
    }
    mActivity = this;
    return localLoaderManagerImpl;
  }
  
  public final LoaderManager getSupportLoaderManager()
  {
    if (mLoaderManager != null) {
      return mLoaderManager;
    }
    mCheckedForLoaderManager = true;
    mLoaderManager = getLoaderManager("(root)", mLoadersStarted, true);
    return mLoaderManager;
  }
  
  final void invalidateSupportFragment(String paramString)
  {
    if (mAllLoaderManagers != null)
    {
      LoaderManagerImpl localLoaderManagerImpl = (LoaderManagerImpl)mAllLoaderManagers.get(paramString);
      if ((localLoaderManagerImpl != null) && (!mRetaining))
      {
        localLoaderManagerImpl.doDestroy();
        mAllLoaderManagers.remove(paramString);
      }
    }
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    mFragments.mStateSaved = false;
    int i = paramInt1 >> 16;
    if (i != 0)
    {
      i -= 1;
      if ((mFragments.mActive == null) || (i < 0) || (i >= mFragments.mActive.size()))
      {
        new StringBuilder("Activity result fragment index out of range: 0x").append(Integer.toHexString(paramInt1));
        return;
      }
      Fragment localFragment = (Fragment)mFragments.mActive.get(i);
      if (localFragment == null)
      {
        new StringBuilder("Activity result no fragment exists for index: 0x").append(Integer.toHexString(paramInt1));
        return;
      }
      localFragment.onActivityResult(0xFFFF & paramInt1, paramInt2, paramIntent);
      return;
    }
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
  }
  
  public void onBackPressed()
  {
    if (!mFragments.popBackStackImmediate())
    {
      if (Build.VERSION.SDK_INT >= 21) {
        ActivityCompat21.finishAfterTransition(this);
      }
    }
    else {
      return;
    }
    finish();
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    mFragments.dispatchConfigurationChanged(paramConfiguration);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    kkxxkk.b041E041EОО041EО(getApplicationContext());
    xkkkxk.b041E041EООО041E(getApplicationContext());
    mFragments.attachActivity(this, mContainer, null);
    if (getLayoutInflater().getFactory() == null) {
      getLayoutInflater().setFactory(this);
    }
    super.onCreate(paramBundle);
    NonConfigurationInstances localNonConfigurationInstances = (NonConfigurationInstances)getLastNonConfigurationInstance();
    if (localNonConfigurationInstances != null) {
      mAllLoaderManagers = loaders;
    }
    Parcelable localParcelable;
    FragmentManagerImpl localFragmentManagerImpl;
    if (paramBundle != null)
    {
      localParcelable = paramBundle.getParcelable("android:support:fragments");
      localFragmentManagerImpl = mFragments;
      if (localNonConfigurationInstances == null) {
        break label114;
      }
    }
    label114:
    for (paramBundle = fragments;; paramBundle = null)
    {
      localFragmentManagerImpl.restoreAllState(localParcelable, paramBundle);
      mFragments.dispatchCreate();
      return;
    }
  }
  
  public boolean onCreatePanelMenu(int paramInt, Menu paramMenu)
  {
    if (paramInt == 0)
    {
      boolean bool1 = super.onCreatePanelMenu(paramInt, paramMenu);
      boolean bool2 = mFragments.dispatchCreateOptionsMenu(paramMenu, getMenuInflater());
      if (Build.VERSION.SDK_INT >= 11) {
        return bool1 | bool2;
      }
      return true;
    }
    return super.onCreatePanelMenu(paramInt, paramMenu);
  }
  
  public View onCreateView(String paramString, @q Context paramContext, @q AttributeSet paramAttributeSet)
  {
    Object localObject;
    if (!"fragment".equals(paramString)) {
      localObject = super.onCreateView(paramString, paramContext, paramAttributeSet);
    }
    View localView;
    do
    {
      return (View)localObject;
      localView = mFragments.onCreateView(paramString, paramContext, paramAttributeSet);
      localObject = localView;
    } while (localView != null);
    return super.onCreateView(paramString, paramContext, paramAttributeSet);
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    doReallyStop(false);
    mFragments.dispatchDestroy();
    if (mLoaderManager != null) {
      mLoaderManager.doDestroy();
    }
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((Build.VERSION.SDK_INT < 5) && (paramInt == 4) && (paramKeyEvent.getRepeatCount() == 0))
    {
      onBackPressed();
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  public void onLowMemory()
  {
    super.onLowMemory();
    mFragments.dispatchLowMemory();
  }
  
  public boolean onMenuItemSelected(int paramInt, MenuItem paramMenuItem)
  {
    if (super.onMenuItemSelected(paramInt, paramMenuItem)) {
      return true;
    }
    switch (paramInt)
    {
    default: 
      return false;
    case 0: 
      return mFragments.dispatchOptionsItemSelected(paramMenuItem);
    }
    return mFragments.dispatchContextItemSelected(paramMenuItem);
  }
  
  public void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    mFragments.mStateSaved = false;
  }
  
  public void onPanelClosed(int paramInt, Menu paramMenu)
  {
    switch (paramInt)
    {
    }
    for (;;)
    {
      super.onPanelClosed(paramInt, paramMenu);
      return;
      mFragments.dispatchOptionsMenuClosed(paramMenu);
    }
  }
  
  public void onPause()
  {
    super.onPause();
    mResumed = false;
    if (mHandler.hasMessages(2))
    {
      mHandler.removeMessages(2);
      mFragments.dispatchResume();
    }
    mFragments.moveToState$2563266(4);
  }
  
  protected void onPostResume()
  {
    super.onPostResume();
    mHandler.removeMessages(2);
    mFragments.dispatchResume();
    mFragments.execPendingActions();
  }
  
  public boolean onPreparePanel(int paramInt, View paramView, Menu paramMenu)
  {
    if ((paramInt == 0) && (paramMenu != null))
    {
      if (mOptionsMenuInvalidated)
      {
        mOptionsMenuInvalidated = false;
        paramMenu.clear();
        onCreatePanelMenu(paramInt, paramMenu);
      }
      return super.onPreparePanel(0, paramView, paramMenu) | mFragments.dispatchPrepareOptionsMenu(paramMenu);
    }
    return super.onPreparePanel(paramInt, paramView, paramMenu);
  }
  
  public void onResume()
  {
    super.onResume();
    mHandler.sendEmptyMessage(2);
    mResumed = true;
    mFragments.execPendingActions();
  }
  
  public final Object onRetainNonConfigurationInstance()
  {
    int k = 0;
    if (mStopped) {
      doReallyStop(true);
    }
    FragmentManagerImpl localFragmentManagerImpl = mFragments;
    int i;
    Object localObject2;
    Object localObject3;
    int j;
    if (mActive != null)
    {
      i = 0;
      localObject1 = null;
      localObject2 = localObject1;
      if (i < mActive.size())
      {
        Fragment localFragment = (Fragment)mActive.get(i);
        localObject3 = localObject1;
        if (localFragment != null)
        {
          localObject3 = localObject1;
          if (mRetainInstance)
          {
            localObject2 = localObject1;
            if (localObject1 == null) {
              localObject2 = new ArrayList();
            }
            ((ArrayList)localObject2).add(localFragment);
            mRetaining = true;
            if (mTarget == null) {
              break label180;
            }
          }
        }
        label180:
        for (j = mTarget.mIndex;; j = -1)
        {
          mTargetIndex = j;
          localObject3 = localObject2;
          if (FragmentManagerImpl.DEBUG)
          {
            new StringBuilder("retainNonConfig: keeping retained ").append(localFragment);
            localObject3 = localObject2;
          }
          i += 1;
          localObject1 = localObject3;
          break;
        }
      }
    }
    else
    {
      localObject2 = null;
    }
    if (mAllLoaderManagers != null)
    {
      int m = mAllLoaderManagers.size();
      localObject1 = new LoaderManagerImpl[m];
      i = m - 1;
      while (i >= 0)
      {
        localObject1[i] = ((LoaderManagerImpl)mAllLoaderManagers.valueAt(i));
        i -= 1;
      }
      i = 0;
      j = k;
      k = i;
      if (j < m)
      {
        localObject3 = localObject1[j];
        if (mRetaining) {
          i = 1;
        }
        for (;;)
        {
          j += 1;
          break;
          ((LoaderManagerImpl)localObject3).doDestroy();
          mAllLoaderManagers.remove(mWho);
        }
      }
    }
    else
    {
      k = 0;
    }
    if ((localObject2 == null) && (k == 0)) {
      return null;
    }
    Object localObject1 = new NonConfigurationInstances();
    activity = null;
    custom = null;
    children = null;
    fragments = ((ArrayList)localObject2);
    loaders = mAllLoaderManagers;
    return localObject1;
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    Parcelable localParcelable = mFragments.saveAllState();
    if (localParcelable != null) {
      paramBundle.putParcelable("android:support:fragments", localParcelable);
    }
  }
  
  public void onStart()
  {
    super.onStart();
    mStopped = false;
    mReallyStopped = false;
    mHandler.removeMessages(1);
    if (!mCreated)
    {
      mCreated = true;
      mFragments.dispatchActivityCreated();
    }
    mFragments.mStateSaved = false;
    mFragments.execPendingActions();
    if (!mLoadersStarted)
    {
      mLoadersStarted = true;
      if (mLoaderManager == null) {
        break label146;
      }
      mLoaderManager.doStart();
    }
    int k;
    LoaderManagerImpl[] arrayOfLoaderManagerImpl;
    for (;;)
    {
      mCheckedForLoaderManager = true;
      mFragments.dispatchStart();
      if (mAllLoaderManagers == null) {
        return;
      }
      k = mAllLoaderManagers.size();
      arrayOfLoaderManagerImpl = new LoaderManagerImpl[k];
      i = k - 1;
      while (i >= 0)
      {
        arrayOfLoaderManagerImpl[i] = ((LoaderManagerImpl)mAllLoaderManagers.valueAt(i));
        i -= 1;
      }
      label146:
      if (!mCheckedForLoaderManager)
      {
        mLoaderManager = getLoaderManager("(root)", mLoadersStarted, false);
        if ((mLoaderManager != null) && (!mLoaderManager.mStarted)) {
          mLoaderManager.doStart();
        }
      }
    }
    int i = 0;
    while (i < k)
    {
      LoaderManagerImpl localLoaderManagerImpl = arrayOfLoaderManagerImpl[i];
      if (mRetaining)
      {
        if (LoaderManagerImpl.DEBUG) {
          new StringBuilder("Finished Retaining in ").append(localLoaderManagerImpl);
        }
        mRetaining = false;
        int j = mLoaders.size() - 1;
        while (j >= 0)
        {
          LoaderManagerImpl.LoaderInfo localLoaderInfo = (LoaderManagerImpl.LoaderInfo)mLoaders.valueAt(j);
          if (mRetaining)
          {
            if (LoaderManagerImpl.DEBUG) {
              new StringBuilder("  Finished Retaining: ").append(localLoaderInfo);
            }
            mRetaining = false;
            if ((mStarted != mRetainingStarted) && (!mStarted)) {
              localLoaderInfo.stop();
            }
          }
          if ((mStarted) && (mHaveData) && (!mReportNextStart)) {
            localLoaderInfo.callOnLoadFinished(mLoader, mData);
          }
          j -= 1;
        }
      }
      localLoaderManagerImpl.doReportStart();
      i += 1;
    }
  }
  
  public void onStop()
  {
    super.onStop();
    mStopped = true;
    mHandler.sendEmptyMessage(1);
    mFragments.dispatchStop();
  }
  
  public void startActivityForResult(Intent paramIntent, int paramInt)
  {
    if ((paramInt != -1) && ((0xFFFF0000 & paramInt) != 0)) {
      throw new IllegalArgumentException("Can only use lower 16 bits for requestCode");
    }
    super.startActivityForResult(paramIntent, paramInt);
  }
  
  public final void startActivityFromFragment(Fragment paramFragment, Intent paramIntent, int paramInt)
  {
    if (paramInt == -1)
    {
      super.startActivityForResult(paramIntent, -1);
      return;
    }
    if ((0xFFFF0000 & paramInt) != 0) {
      throw new IllegalArgumentException("Can only use lower 16 bits for requestCode");
    }
    super.startActivityForResult(paramIntent, (mIndex + 1 << 16) + (0xFFFF & paramInt));
  }
  
  public final void supportInvalidateOptionsMenu()
  {
    if (Build.VERSION.SDK_INT >= 11)
    {
      ActivityCompatHoneycomb.invalidateOptionsMenu(this);
      return;
    }
    mOptionsMenuInvalidated = true;
  }
  
  static final class NonConfigurationInstances
  {
    Object activity;
    SimpleArrayMap<String, Object> children;
    Object custom;
    ArrayList<Fragment> fragments;
    SimpleArrayMap<String, LoaderManagerImpl> loaders;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.FragmentActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */