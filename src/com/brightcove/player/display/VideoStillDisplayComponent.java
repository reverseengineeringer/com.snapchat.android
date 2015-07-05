package com.brightcove.player.display;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import com.brightcove.player.display.tasks.LoadImageTask;
import com.brightcove.player.event.AbstractComponent;
import com.brightcove.player.event.Component;
import com.brightcove.player.event.Default;
import com.brightcove.player.event.Emits;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.EventListener;
import com.brightcove.player.event.ListensFor;
import com.brightcove.player.util.ErrorUtil;
import java.net.URI;
import java.util.Map;

@Emits(events={})
@ListensFor(events={"activityStopped", "cuePoint", "didPlay", "didSeekTo", "fragmentStopped", "setVideoStill", "willInterruptContent"})
public class VideoStillDisplayComponent
  extends AbstractComponent
  implements Component
{
  public static final String TAG = VideoStillDisplayComponent.class.getSimpleName();
  private int activityStoppedListenerToken;
  private int cuePointListenerToken;
  private int didPlayListenerToken;
  private int didSeekToListenerToken;
  private int fragmentStoppedListenerToken;
  private LoadImageTask task;
  private ImageView view;
  private int willInterruptContentListenerToken;
  
  public VideoStillDisplayComponent(ImageView paramImageView, EventEmitter paramEventEmitter)
  {
    super(paramEventEmitter, VideoStillDisplayComponent.class);
    if (paramImageView == null) {
      throw new IllegalArgumentException(ErrorUtil.getMessage("imageViewRequired"));
    }
    view = paramImageView;
    addListener("setVideoStill", new OnSetVideoStill(null));
  }
  
  private void recycle()
  {
    Drawable localDrawable = view.getDrawable();
    if ((localDrawable != null) && ((localDrawable instanceof BitmapDrawable))) {
      ((BitmapDrawable)localDrawable).getBitmap().recycle();
    }
  }
  
  class HideListener
    implements EventListener
  {
    private HideListener() {}
    
    public void processEvent(Event paramEvent)
    {
      paramEvent = VideoStillDisplayComponent.TAG;
      view.setVisibility(4);
      if (task != null)
      {
        task.cancel(true);
        VideoStillDisplayComponent.access$202(VideoStillDisplayComponent.this, null);
      }
      VideoStillDisplayComponent.this.recycle();
      eventEmitter.off("cuePoint", cuePointListenerToken);
      eventEmitter.off("didPlay", didPlayListenerToken);
      eventEmitter.off("didSeekTo", didSeekToListenerToken);
      eventEmitter.off("willInterruptContent", willInterruptContentListenerToken);
      eventEmitter.off("activityStopped", activityStoppedListenerToken);
      eventEmitter.off("fragmentStopped", fragmentStoppedListenerToken);
    }
  }
  
  class OnSetVideoStill
    implements EventListener
  {
    private OnSetVideoStill() {}
    
    @Default
    public void processEvent(Event paramEvent)
    {
      Object localObject = VideoStillDisplayComponent.TAG;
      VideoStillDisplayComponent.this.recycle();
      localObject = new VideoStillDisplayComponent.HideListener(VideoStillDisplayComponent.this, null);
      VideoStillDisplayComponent.access$402(VideoStillDisplayComponent.this, eventEmitter.once("cuePoint", (EventListener)localObject));
      VideoStillDisplayComponent.access$602(VideoStillDisplayComponent.this, eventEmitter.once("didPlay", (EventListener)localObject));
      VideoStillDisplayComponent.access$802(VideoStillDisplayComponent.this, eventEmitter.once("didSeekTo", (EventListener)localObject));
      VideoStillDisplayComponent.access$1002(VideoStillDisplayComponent.this, eventEmitter.once("willInterruptContent", (EventListener)localObject));
      VideoStillDisplayComponent.access$1202(VideoStillDisplayComponent.this, eventEmitter.once("activityStopped", (EventListener)localObject));
      VideoStillDisplayComponent.access$1402(VideoStillDisplayComponent.this, eventEmitter.once("fragmentStopped", (EventListener)localObject));
      paramEvent = (URI)properties.get("video_still");
      VideoStillDisplayComponent.access$202(VideoStillDisplayComponent.this, new LoadImageTask(view, eventEmitter));
      task.setSuccessEventType("didSetVideoStill");
      task.execute(new URI[] { paramEvent });
    }
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.display.VideoStillDisplayComponent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */