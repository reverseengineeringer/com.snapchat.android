package android.support.v4.media;

import android.app.Activity;
import android.content.Context;
import android.media.AudioManager;
import android.os.Build.VERSION;
import android.os.SystemClock;
import android.support.v4.view.KeyEventCompat;
import android.view.KeyEvent;
import android.view.KeyEvent.Callback;
import android.view.View;
import android.view.Window;
import java.util.ArrayList;

public final class TransportMediator
  extends TransportController
{
  public static final int FLAG_KEY_MEDIA_FAST_FORWARD = 64;
  public static final int FLAG_KEY_MEDIA_NEXT = 128;
  public static final int FLAG_KEY_MEDIA_PAUSE = 16;
  public static final int FLAG_KEY_MEDIA_PLAY = 4;
  public static final int FLAG_KEY_MEDIA_PLAY_PAUSE = 8;
  public static final int FLAG_KEY_MEDIA_PREVIOUS = 1;
  public static final int FLAG_KEY_MEDIA_REWIND = 2;
  public static final int FLAG_KEY_MEDIA_STOP = 32;
  public static final int KEYCODE_MEDIA_PAUSE = 127;
  public static final int KEYCODE_MEDIA_PLAY = 126;
  public static final int KEYCODE_MEDIA_RECORD = 130;
  final AudioManager mAudioManager;
  final TransportPerformer mCallbacks;
  final Context mContext;
  final TransportMediatorJellybeanMR2 mController;
  final Object mDispatcherState;
  final KeyEvent.Callback mKeyEventCallback = new KeyEvent.Callback()
  {
    public final boolean onKeyDown(int paramAnonymousInt, KeyEvent paramAnonymousKeyEvent)
    {
      return TransportMediator.isMediaKey(paramAnonymousInt);
    }
    
    public final boolean onKeyLongPress(int paramAnonymousInt, KeyEvent paramAnonymousKeyEvent)
    {
      return false;
    }
    
    public final boolean onKeyMultiple(int paramAnonymousInt1, int paramAnonymousInt2, KeyEvent paramAnonymousKeyEvent)
    {
      return false;
    }
    
    public final boolean onKeyUp(int paramAnonymousInt, KeyEvent paramAnonymousKeyEvent)
    {
      return TransportMediator.isMediaKey(paramAnonymousInt);
    }
  };
  final ArrayList<TransportStateListener> mListeners = new ArrayList();
  final TransportMediatorCallback mTransportKeyCallback = new TransportMediatorCallback()
  {
    public final long getPlaybackPosition()
    {
      return mCallbacks.onGetCurrentPosition();
    }
    
    public final void handleAudioFocusChange(int paramAnonymousInt)
    {
      int i = 0;
      switch (paramAnonymousInt)
      {
      }
      for (paramAnonymousInt = i;; paramAnonymousInt = 127)
      {
        if (paramAnonymousInt != 0)
        {
          long l = SystemClock.uptimeMillis();
          new KeyEvent(l, l, 0, 127, 0);
          new KeyEvent(l, l, 1, 127, 0);
        }
        return;
      }
    }
    
    public final void handleKey(KeyEvent paramAnonymousKeyEvent)
    {
      paramAnonymousKeyEvent.dispatch(mKeyEventCallback);
    }
    
    public final void playbackPositionUpdate$1349ef() {}
  };
  final View mView;
  
  private TransportMediator(Activity paramActivity, TransportPerformer paramTransportPerformer)
  {
    this(paramActivity, null, paramTransportPerformer);
  }
  
  private TransportMediator(Activity paramActivity, View paramView, TransportPerformer paramTransportPerformer)
  {
    if (paramActivity != null) {}
    for (Object localObject = paramActivity;; localObject = paramView.getContext())
    {
      mContext = ((Context)localObject);
      mCallbacks = paramTransportPerformer;
      mAudioManager = ((AudioManager)mContext.getSystemService("audio"));
      if (paramActivity != null) {
        paramView = paramActivity.getWindow().getDecorView();
      }
      mView = paramView;
      mDispatcherState = KeyEventCompat.getKeyDispatcherState(mView);
      if (Build.VERSION.SDK_INT < 18) {
        break;
      }
      mController = new TransportMediatorJellybeanMR2(mContext, mAudioManager, mView, mTransportKeyCallback);
      return;
    }
    mController = null;
  }
  
  private TransportMediator(View paramView, TransportPerformer paramTransportPerformer)
  {
    this(null, paramView, paramTransportPerformer);
  }
  
  private void destroy()
  {
    mController.destroy();
  }
  
  private boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
  {
    return KeyEventCompat.dispatch(paramKeyEvent, mKeyEventCallback, mDispatcherState, this);
  }
  
  private TransportStateListener[] getListeners()
  {
    if (mListeners.size() <= 0) {
      return null;
    }
    TransportStateListener[] arrayOfTransportStateListener = new TransportStateListener[mListeners.size()];
    mListeners.toArray(arrayOfTransportStateListener);
    return arrayOfTransportStateListener;
  }
  
  private Object getRemoteControlClient()
  {
    if (mController != null) {
      return mController.getRemoteControlClient();
    }
    return null;
  }
  
  static boolean isMediaKey(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return false;
    }
    return true;
  }
  
  private void pushControllerState()
  {
    if (mController != null) {
      mController.refreshState$4958d6fe(mCallbacks.onIsPlaying(), mCallbacks.onGetCurrentPosition());
    }
  }
  
  private void refreshState()
  {
    pushControllerState();
    getListeners();
    getListeners();
  }
  
  private void reportPlayingChanged()
  {
    getListeners();
  }
  
  private void reportTransportControlsChanged()
  {
    getListeners();
  }
  
  public final int getBufferPercentage()
  {
    return 100;
  }
  
  public final long getCurrentPosition()
  {
    return mCallbacks.onGetCurrentPosition();
  }
  
  public final long getDuration()
  {
    return mCallbacks.onGetDuration();
  }
  
  public final int getTransportControlFlags()
  {
    return 60;
  }
  
  public final boolean isPlaying()
  {
    return mCallbacks.onIsPlaying();
  }
  
  public final void pausePlaying()
  {
    if (mController != null) {
      mController.pausePlaying();
    }
    pushControllerState();
    getListeners();
  }
  
  public final void registerStateListener(TransportStateListener paramTransportStateListener)
  {
    mListeners.add(paramTransportStateListener);
  }
  
  public final void seekTo$1349ef() {}
  
  public final void startPlaying()
  {
    if (mController != null) {
      mController.startPlaying();
    }
    pushControllerState();
    getListeners();
  }
  
  public final void stopPlaying()
  {
    if (mController != null) {
      mController.stopPlaying();
    }
    pushControllerState();
    getListeners();
  }
  
  public final void unregisterStateListener(TransportStateListener paramTransportStateListener)
  {
    mListeners.remove(paramTransportStateListener);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.media.TransportMediator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */