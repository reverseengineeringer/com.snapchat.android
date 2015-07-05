package com.brightcove.player.controller;

import android.view.View;
import android.view.View.OnClickListener;
import com.brightcove.player.R.id;
import com.brightcove.player.event.EventEmitter;
import java.util.HashMap;

class BrightcoveClosedCaptioningController$1
  implements View.OnClickListener
{
  BrightcoveClosedCaptioningController$1(BrightcoveClosedCaptioningController paramBrightcoveClosedCaptioningController) {}
  
  public void onClick(View paramView)
  {
    if (paramView.getId() == R.id.enable_captions_btn) {}
    for (boolean bool = true;; bool = false)
    {
      paramView = new HashMap();
      paramView.put("boolean", Boolean.valueOf(bool));
      BrightcoveClosedCaptioningController.access$000(this$0).emit("setCaptionsState", paramView);
      this$0.saveClosedCaptioningState(bool);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.controller.BrightcoveClosedCaptioningController.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */