package com.brightcove.player.view;

import android.annotation.TargetApi;
import android.app.ActionBar;
import android.app.Activity;
import android.app.Fragment;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import android.widget.MediaController;
import com.brightcove.player.event.Default;
import com.brightcove.player.event.Emits;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.EventListener;
import com.brightcove.player.event.EventLogger;
import com.brightcove.player.event.ListensFor;
import java.util.HashMap;
import java.util.Map;

@Emits(events={"fragmentActivityCreated", "fragmentCreatedView", "fragmentDestroyed", "fragmentDestroyedView", "fragmentDetached", "fragmentPaused", "fragmentResumed", "fragmentSaveInstanceState", "fragmentStarted", "fragmentStopped", "fragmentViewStateRestored"})
@ListensFor(events={"fragmentDestroyedView", "fragmentSaveInstanceState"})
@TargetApi(11)
public class BrightcovePlayerFragment
  extends Fragment
{
  protected static final String POSITION = "position";
  public static final String TAG = BrightcovePlayerFragment.class.getSimpleName();
  protected static final String WAS_PLAYING = "wasPlaying";
  protected BrightcoveVideoView brightcoveVideoView;
  private EventEmitter eventEmitter;
  private int originalLayoutParamsHeight;
  private int originalLayoutParamsWidth;
  private int position;
  private boolean wasPlaying;
  
  public void fullScreen()
  {
    Object localObject1 = getActivity();
    Object localObject2 = ((Activity)localObject1).getActionBar();
    if (localObject2 != null) {
      ((ActionBar)localObject2).hide();
    }
    localObject2 = ((Activity)localObject1).getWindow().getAttributes();
    flags |= 0x400;
    ((Activity)localObject1).getWindow().setAttributes((WindowManager.LayoutParams)localObject2);
    new StringBuilder("fullScreen: ").append(originalLayoutParamsWidth).append("x").append(originalLayoutParamsHeight);
    localObject1 = brightcoveVideoView.getLayoutParams();
    originalLayoutParamsWidth = width;
    originalLayoutParamsHeight = height;
    width = -1;
    height = -1;
    brightcoveVideoView.setLayoutParams((ViewGroup.LayoutParams)localObject1);
  }
  
  public BrightcoveVideoView getBrightcoveVideoView()
  {
    return brightcoveVideoView;
  }
  
  public void normalScreen()
  {
    new StringBuilder("normalScreen: ").append(originalLayoutParamsWidth).append("x").append(originalLayoutParamsHeight);
    if ((originalLayoutParamsWidth != Integer.MIN_VALUE) && (originalLayoutParamsHeight != Integer.MIN_VALUE))
    {
      Object localObject1 = getActivity();
      Object localObject2 = ((Activity)localObject1).getActionBar();
      if (localObject2 != null) {
        ((ActionBar)localObject2).show();
      }
      localObject2 = ((Activity)localObject1).getWindow().getAttributes();
      flags ^= 0x400;
      ((Activity)localObject1).getWindow().setAttributes((WindowManager.LayoutParams)localObject2);
      localObject1 = brightcoveVideoView.getLayoutParams();
      width = originalLayoutParamsWidth;
      height = originalLayoutParamsHeight;
      brightcoveVideoView.setLayoutParams((ViewGroup.LayoutParams)localObject1);
      originalLayoutParamsWidth = Integer.MIN_VALUE;
      originalLayoutParamsHeight = Integer.MIN_VALUE;
    }
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    HashMap localHashMap = new HashMap();
    if (paramBundle != null) {
      localHashMap.put("instanceState", paramBundle);
    }
    eventEmitter.emit("fragmentActivityCreated", localHashMap);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    if (brightcoveVideoView != null)
    {
      eventEmitter = brightcoveVideoView.getEventEmitter();
      new EventLogger(eventEmitter, true, getClass().getSimpleName());
      if (paramBundle != null)
      {
        position = paramBundle.getInt("position");
        wasPlaying = paramBundle.getBoolean("wasPlaying");
      }
      paramViewGroup = new MediaController(getActivity());
      brightcoveVideoView.setMediaController(paramViewGroup);
      paramViewGroup = new HashMap();
      if (paramBundle != null) {
        paramViewGroup.put("instanceState", paramBundle);
      }
      eventEmitter.emit("fragmentCreatedView", paramViewGroup);
      return paramLayoutInflater;
    }
    throw new IllegalStateException("brightcoveVideoView needs to be wired up to the layout.");
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    eventEmitter.emit("fragmentDestroyed");
  }
  
  public void onDestroyView()
  {
    super.onDestroyView();
    eventEmitter.on("fragmentDestroyedView", new EventListener()
    {
      @Default
      public void processEvent(Event paramAnonymousEvent)
      {
        eventEmitter.off();
      }
    });
    eventEmitter.emit("fragmentDestroyedView");
  }
  
  public void onDetach()
  {
    super.onDetach();
    eventEmitter.emit("fragmentDetached");
  }
  
  public void onPause()
  {
    super.onPause();
    if (brightcoveVideoView.isPlaying()) {
      brightcoveVideoView.pause();
    }
    for (wasPlaying = true;; wasPlaying = false)
    {
      position = brightcoveVideoView.getCurrentPosition();
      eventEmitter.emit("fragmentPaused");
      return;
    }
  }
  
  public void onResume()
  {
    super.onResume();
    if (wasPlaying) {
      brightcoveVideoView.start();
    }
    eventEmitter.emit("fragmentResumed");
  }
  
  public void onSaveInstanceState(final Bundle paramBundle)
  {
    paramBundle.putInt("position", position);
    paramBundle.putBoolean("wasPlaying", wasPlaying);
    eventEmitter.on("fragmentSaveInstanceState", new EventListener()
    {
      @Default
      public void processEvent(Event paramAnonymousEvent)
      {
        BrightcovePlayerFragment.this.onSaveInstanceState(paramBundle);
      }
    });
    HashMap localHashMap = new HashMap();
    localHashMap.put("instanceState", paramBundle);
    eventEmitter.emit("fragmentSaveInstanceState", localHashMap);
  }
  
  public void onStart()
  {
    super.onStart();
    if (position > 0)
    {
      brightcoveVideoView.seekTo(position);
      position = -1;
    }
    eventEmitter.emit("fragmentStarted");
  }
  
  public void onStop()
  {
    super.onStop();
    brightcoveVideoView.stopPlayback();
    eventEmitter.emit("fragmentStopped");
  }
  
  @TargetApi(17)
  public void onViewStateRestored(Bundle paramBundle)
  {
    super.onViewStateRestored(paramBundle);
    HashMap localHashMap = new HashMap();
    if (paramBundle != null) {
      localHashMap.put("instanceState", paramBundle);
    }
    eventEmitter.emit("fragmentViewStateRestored", localHashMap);
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.view.BrightcovePlayerFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */