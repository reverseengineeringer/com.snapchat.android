package com.brightcove.player.captioning.tasks;

import com.brightcove.player.captioning.WebVTTParser;
import java.io.InputStream;

class LoadCaptionsTask$1
  implements LoadCaptionsTask.ResponseStreamListener
{
  LoadCaptionsTask$1(LoadCaptionsTask paramLoadCaptionsTask) {}
  
  public void onStreamReady(InputStream paramInputStream)
  {
    LoadCaptionsTask.access$002(this$0, WebVTTParser.parse(paramInputStream, "UTF-8"));
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.captioning.tasks.LoadCaptionsTask.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */