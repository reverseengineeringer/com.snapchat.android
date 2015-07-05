package com.brightcove.player.view;

import android.annotation.SuppressLint;
import android.app.ActionBar;
import android.app.Activity;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import android.widget.MediaController;
import com.brightcove.player.controller.BrightcoveClosedCaptioningController;
import com.brightcove.player.event.Component;
import com.brightcove.player.event.Default;
import com.brightcove.player.event.Emits;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.EventListener;
import com.brightcove.player.event.EventLogger;
import com.brightcove.player.event.ListensFor;
import java.util.HashMap;
import java.util.Map;

@Emits(events={"activityCreated", "activityDestroyed", "activityPaused", "activityRestarted", "activityResumed", "activitySaveInstanceState", "activityStarted", "activityStopped"})
@ListensFor(events={"activityDestroyed", "activitySaveInstanceState"})
public class BrightcovePlayer
  extends Activity
  implements Component
{
  protected static final String POSITION = "position";
  public static final String TAG = BrightcovePlayer.class.getSimpleName();
  protected static final String WAS_PLAYING = "wasPlaying";
  protected BaseVideoView brightcoveVideoView;
  private EventEmitter eventEmitter;
  private EventLogger eventLogger;
  private int originalLayoutParamsHeight;
  private int originalLayoutParamsWidth;
  private int position;
  private boolean wasPlaying;
  
  @SuppressLint({"NewApi"})
  private void hideActionBar()
  {
    if (Build.VERSION.SDK_INT >= 11)
    {
      ActionBar localActionBar = getActionBar();
      if (localActionBar != null) {
        localActionBar.hide();
      }
    }
  }
  
  @SuppressLint({"NewApi"})
  private void showActionBar()
  {
    if (Build.VERSION.SDK_INT >= 11)
    {
      ActionBar localActionBar = getActionBar();
      if (localActionBar != null) {
        localActionBar.show();
      }
    }
  }
  
  public void fullScreen()
  {
    hideActionBar();
    Object localObject = getWindow().getAttributes();
    flags |= 0x400;
    getWindow().setAttributes((WindowManager.LayoutParams)localObject);
    new StringBuilder("fullScreen: ").append(originalLayoutParamsWidth).append("x").append(originalLayoutParamsHeight);
    localObject = brightcoveVideoView.getLayoutParams();
    originalLayoutParamsWidth = width;
    originalLayoutParamsHeight = height;
    width = -1;
    height = -1;
    brightcoveVideoView.setLayoutParams((ViewGroup.LayoutParams)localObject);
  }
  
  public BaseVideoView getBaseVideoView()
  {
    return brightcoveVideoView;
  }
  
  public BrightcoveVideoView getBrightcoveVideoView()
  {
    BrightcoveVideoView localBrightcoveVideoView = null;
    if ((brightcoveVideoView instanceof BrightcoveVideoView)) {
      localBrightcoveVideoView = (BrightcoveVideoView)brightcoveVideoView;
    }
    return localBrightcoveVideoView;
  }
  
  public EventLogger getEventLogger()
  {
    return eventLogger;
  }
  
  @SuppressLint({"NewApi"})
  public void hideClosedCaptioningDialog()
  {
    brightcoveVideoView.getClosedCaptioningController().hideCaptionsDialog();
  }
  
  public void normalScreen()
  {
    new StringBuilder("normalScreen: ").append(originalLayoutParamsWidth).append("x").append(originalLayoutParamsHeight);
    if ((originalLayoutParamsWidth != Integer.MIN_VALUE) && (originalLayoutParamsHeight != Integer.MIN_VALUE))
    {
      showActionBar();
      Object localObject = getWindow().getAttributes();
      flags ^= 0x400;
      getWindow().setAttributes((WindowManager.LayoutParams)localObject);
      localObject = brightcoveVideoView.getLayoutParams();
      width = originalLayoutParamsWidth;
      height = originalLayoutParamsHeight;
      brightcoveVideoView.setLayoutParams((ViewGroup.LayoutParams)localObject);
      originalLayoutParamsWidth = Integer.MIN_VALUE;
      originalLayoutParamsHeight = Integer.MIN_VALUE;
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (brightcoveVideoView != null)
    {
      eventEmitter = brightcoveVideoView.getEventEmitter();
      eventLogger = new EventLogger(eventEmitter, true, getClass().getSimpleName());
      if (paramBundle != null)
      {
        position = paramBundle.getInt("position");
        wasPlaying = paramBundle.getBoolean("wasPlaying");
      }
      Object localObject = new MediaController(this);
      brightcoveVideoView.setMediaController((MediaController)localObject);
      localObject = new HashMap();
      if (paramBundle != null) {
        ((Map)localObject).put("instanceState", paramBundle);
      }
      eventEmitter.emit("activityCreated", (Map)localObject);
      return;
    }
    throw new IllegalStateException("brightcoveVideoView needs to be wired up to the layout.");
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    eventEmitter.on("activityDestroyed", new EventListener()
    {
      @Default
      public void processEvent(Event paramAnonymousEvent)
      {
        eventEmitter.off();
      }
    });
    eventEmitter.emit("activityDestroyed");
  }
  
  protected void onPause()
  {
    super.onPause();
    if (brightcoveVideoView.isPlaying()) {
      brightcoveVideoView.pause();
    }
    for (wasPlaying = true;; wasPlaying = false)
    {
      eventEmitter.emit("activityPaused");
      return;
    }
  }
  
  protected void onRestart()
  {
    super.onRestart();
    eventEmitter.emit("activityRestarted");
  }
  
  protected void onResume()
  {
    super.onResume();
    if (wasPlaying) {
      brightcoveVideoView.start();
    }
    eventEmitter.emit("activityResumed");
  }
  
  protected void onSaveInstanceState(final Bundle paramBundle)
  {
    paramBundle.putInt("position", position);
    paramBundle.putBoolean("wasPlaying", wasPlaying);
    eventEmitter.on("activitySaveInstanceState", new EventListener()
    {
      @Default
      public void processEvent(Event paramAnonymousEvent)
      {
        BrightcovePlayer.this.onSaveInstanceState(paramBundle);
      }
    });
    HashMap localHashMap = new HashMap();
    localHashMap.put("instanceState", paramBundle);
    eventEmitter.emit("activitySaveInstanceState", localHashMap);
  }
  
  protected void onStart()
  {
    super.onStart();
    eventEmitter.once("didSetVideo", new EventListener()
    {
      @Default
      public void processEvent(Event paramAnonymousEvent)
      {
        if (position > 0)
        {
          brightcoveVideoView.seekTo(position);
          BrightcovePlayer.access$002(BrightcovePlayer.this, -1);
        }
        if (wasPlaying)
        {
          brightcoveVideoView.start();
          BrightcovePlayer.access$102(BrightcovePlayer.this, false);
        }
      }
    });
    eventEmitter.emit("activityStarted");
  }
  
  protected void onStop()
  {
    super.onStop();
    position = brightcoveVideoView.getCurrentPosition();
    brightcoveVideoView.stopPlayback();
    eventEmitter.emit("activityStopped");
  }
  
  @SuppressLint({"NewApi"})
  public void showClosedCaptioningDialog()
  {
    brightcoveVideoView.getClosedCaptioningController().showCaptionsDialog();
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.view.BrightcovePlayer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */