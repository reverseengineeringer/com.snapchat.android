package com.brightcove.player.captioning.tasks;

import com.brightcove.player.captioning.TTMLParser;
import java.io.InputStream;

class LoadCaptionsTask$2
  implements LoadCaptionsTask.ResponseStreamListener
{
  LoadCaptionsTask$2(LoadCaptionsTask paramLoadCaptionsTask) {}
  
  public void onStreamReady(InputStream paramInputStream)
  {
    LoadCaptionsTask.access$102(this$0, TTMLParser.parseXml(paramInputStream, null));
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.captioning.tasks.LoadCaptionsTask.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */