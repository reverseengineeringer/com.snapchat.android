package com.brightcove.player.controller;

import android.annotation.TargetApi;
import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import com.brightcove.player.captioning.BrightcoveClosedCaptioningOptionsDialog;
import com.brightcove.player.view.BaseVideoView;

class BrightcoveClosedCaptioningController$5
  implements View.OnClickListener
{
  BrightcoveClosedCaptioningController$5(BrightcoveClosedCaptioningController paramBrightcoveClosedCaptioningController) {}
  
  @TargetApi(11)
  public void onClick(View paramView)
  {
    if (this$0.activity != null)
    {
      paramView = this$0.activity.getFragmentManager();
      BrightcoveClosedCaptioningOptionsDialog localBrightcoveClosedCaptioningOptionsDialog = new BrightcoveClosedCaptioningOptionsDialog();
      Bundle localBundle = new Bundle();
      localBundle.putBoolean("isHLS", BrightcoveClosedCaptioningController.access$400(this$0));
      localBrightcoveClosedCaptioningOptionsDialog.setArguments(localBundle);
      localBrightcoveClosedCaptioningOptionsDialog.setEventEmitter(this$0.videoPlayer.getEventEmitter());
      localBrightcoveClosedCaptioningOptionsDialog.show(paramView, "CaptionsOptionsDialog");
      if (this$0.videoPlayer.isPlaying()) {
        this$0.videoPlayer.pause();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.controller.BrightcoveClosedCaptioningController.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */