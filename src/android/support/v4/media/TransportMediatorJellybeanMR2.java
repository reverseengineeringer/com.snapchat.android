package android.support.v4.media;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import android.media.AudioManager.OnAudioFocusChangeListener;
import android.media.RemoteControlClient;
import android.media.RemoteControlClient.OnGetPlaybackPositionListener;
import android.media.RemoteControlClient.OnPlaybackPositionUpdateListener;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnWindowAttachListener;
import android.view.ViewTreeObserver.OnWindowFocusChangeListener;
import kkkkkk.kkxxkk;
import kkkkkk.xkkkxk;

final class TransportMediatorJellybeanMR2
  implements RemoteControlClient.OnGetPlaybackPositionListener, RemoteControlClient.OnPlaybackPositionUpdateListener
{
  AudioManager.OnAudioFocusChangeListener mAudioFocusChangeListener = new AudioManager.OnAudioFocusChangeListener()
  {
    public final void onAudioFocusChange(int paramAnonymousInt)
    {
      mTransportCallback.handleAudioFocusChange(paramAnonymousInt);
    }
  };
  boolean mAudioFocused;
  final AudioManager mAudioManager;
  final Context mContext;
  boolean mFocused;
  final Intent mIntent;
  final BroadcastReceiver mMediaButtonReceiver = new BroadcastReceiver()
  {
    public final void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
    {
      kkxxkk.b041E041EОО041EО(paramAnonymousContext);
      xkkkxk.b041E041EООО041E(paramAnonymousContext);
      try
      {
        paramAnonymousContext = (KeyEvent)paramAnonymousIntent.getParcelableExtra("android.intent.extra.KEY_EVENT");
        mTransportCallback.handleKey(paramAnonymousContext);
        return;
      }
      catch (ClassCastException paramAnonymousContext) {}
    }
  };
  PendingIntent mPendingIntent;
  int mPlayState = 0;
  final String mReceiverAction;
  final IntentFilter mReceiverFilter;
  RemoteControlClient mRemoteControl;
  final View mTargetView;
  final TransportMediatorCallback mTransportCallback;
  final ViewTreeObserver.OnWindowAttachListener mWindowAttachListener = new ViewTreeObserver.OnWindowAttachListener()
  {
    public final void onWindowAttached()
    {
      TransportMediatorJellybeanMR2 localTransportMediatorJellybeanMR2 = TransportMediatorJellybeanMR2.this;
      mContext.registerReceiver(mMediaButtonReceiver, mReceiverFilter);
      mPendingIntent = PendingIntent.getBroadcast(mContext, 0, mIntent, 268435456);
      mRemoteControl = new RemoteControlClient(mPendingIntent);
      mRemoteControl.setOnGetPlaybackPositionListener(localTransportMediatorJellybeanMR2);
      mRemoteControl.setPlaybackPositionUpdateListener(localTransportMediatorJellybeanMR2);
    }
    
    public final void onWindowDetached()
    {
      windowDetached();
    }
  };
  final ViewTreeObserver.OnWindowFocusChangeListener mWindowFocusListener = new ViewTreeObserver.OnWindowFocusChangeListener()
  {
    public final void onWindowFocusChanged(boolean paramAnonymousBoolean)
    {
      if (paramAnonymousBoolean)
      {
        TransportMediatorJellybeanMR2 localTransportMediatorJellybeanMR2 = TransportMediatorJellybeanMR2.this;
        if (!mFocused)
        {
          mFocused = true;
          mAudioManager.registerMediaButtonEventReceiver(mPendingIntent);
          mAudioManager.registerRemoteControlClient(mRemoteControl);
          if (mPlayState == 3) {
            localTransportMediatorJellybeanMR2.takeAudioFocus();
          }
        }
        return;
      }
      loseFocus();
    }
  };
  
  public TransportMediatorJellybeanMR2(Context paramContext, AudioManager paramAudioManager, View paramView, TransportMediatorCallback paramTransportMediatorCallback)
  {
    mContext = paramContext;
    mAudioManager = paramAudioManager;
    mTargetView = paramView;
    mTransportCallback = paramTransportMediatorCallback;
    mReceiverAction = (paramContext.getPackageName() + ":transport:" + System.identityHashCode(this));
    mIntent = new Intent(mReceiverAction);
    mIntent.setPackage(paramContext.getPackageName());
    mReceiverFilter = new IntentFilter();
    mReceiverFilter.addAction(mReceiverAction);
    mTargetView.getViewTreeObserver().addOnWindowAttachListener(mWindowAttachListener);
    mTargetView.getViewTreeObserver().addOnWindowFocusChangeListener(mWindowFocusListener);
  }
  
  private void dropAudioFocus()
  {
    if (mAudioFocused)
    {
      mAudioFocused = false;
      mAudioManager.abandonAudioFocus(mAudioFocusChangeListener);
    }
  }
  
  private void gainFocus()
  {
    if (!mFocused)
    {
      mFocused = true;
      mAudioManager.registerMediaButtonEventReceiver(mPendingIntent);
      mAudioManager.registerRemoteControlClient(mRemoteControl);
      if (mPlayState == 3) {
        takeAudioFocus();
      }
    }
  }
  
  private void windowAttached()
  {
    mContext.registerReceiver(mMediaButtonReceiver, mReceiverFilter);
    mPendingIntent = PendingIntent.getBroadcast(mContext, 0, mIntent, 268435456);
    mRemoteControl = new RemoteControlClient(mPendingIntent);
    mRemoteControl.setOnGetPlaybackPositionListener(this);
    mRemoteControl.setPlaybackPositionUpdateListener(this);
  }
  
  public final void destroy()
  {
    windowDetached();
    mTargetView.getViewTreeObserver().removeOnWindowAttachListener(mWindowAttachListener);
    mTargetView.getViewTreeObserver().removeOnWindowFocusChangeListener(mWindowFocusListener);
  }
  
  public final Object getRemoteControlClient()
  {
    return mRemoteControl;
  }
  
  final void loseFocus()
  {
    dropAudioFocus();
    if (mFocused)
    {
      mFocused = false;
      mAudioManager.unregisterRemoteControlClient(mRemoteControl);
      mAudioManager.unregisterMediaButtonEventReceiver(mPendingIntent);
    }
  }
  
  public final long onGetPlaybackPosition()
  {
    return mTransportCallback.getPlaybackPosition();
  }
  
  public final void onPlaybackPositionUpdate(long paramLong) {}
  
  public final void pausePlaying()
  {
    if (mPlayState == 3)
    {
      mPlayState = 2;
      mRemoteControl.setPlaybackState(2);
    }
    dropAudioFocus();
  }
  
  public final void refreshState$4958d6fe(boolean paramBoolean, long paramLong)
  {
    RemoteControlClient localRemoteControlClient;
    int i;
    if (mRemoteControl != null)
    {
      localRemoteControlClient = mRemoteControl;
      if (!paramBoolean) {
        break label47;
      }
      i = 3;
      if (!paramBoolean) {
        break label53;
      }
    }
    label47:
    label53:
    for (float f = 1.0F;; f = 0.0F)
    {
      localRemoteControlClient.setPlaybackState(i, paramLong, f);
      mRemoteControl.setTransportControlFlags(60);
      return;
      i = 1;
      break;
    }
  }
  
  public final void startPlaying()
  {
    if (mPlayState != 3)
    {
      mPlayState = 3;
      mRemoteControl.setPlaybackState(3);
    }
    if (mFocused) {
      takeAudioFocus();
    }
  }
  
  public final void stopPlaying()
  {
    if (mPlayState != 1)
    {
      mPlayState = 1;
      mRemoteControl.setPlaybackState(1);
    }
    dropAudioFocus();
  }
  
  final void takeAudioFocus()
  {
    if (!mAudioFocused)
    {
      mAudioFocused = true;
      mAudioManager.requestAudioFocus(mAudioFocusChangeListener, 3, 1);
    }
  }
  
  final void windowDetached()
  {
    loseFocus();
    if (mPendingIntent != null)
    {
      mContext.unregisterReceiver(mMediaButtonReceiver);
      mPendingIntent.cancel();
      mPendingIntent = null;
      mRemoteControl = null;
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.media.TransportMediatorJellybeanMR2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */