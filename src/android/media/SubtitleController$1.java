package android.media;

import android.os.Handler.Callback;
import android.os.Message;

class SubtitleController$1
  implements Handler.Callback
{
  SubtitleController$1(SubtitleController paramSubtitleController) {}
  
  public boolean handleMessage(Message paramMessage)
  {
    switch (what)
    {
    default: 
      return false;
    case 1: 
      SubtitleController.access$000(this$0);
      return true;
    case 2: 
      SubtitleController.access$100(this$0);
      return true;
    case 3: 
      SubtitleController.access$200(this$0, (SubtitleTrack)obj);
      return true;
    }
    SubtitleController.access$300(this$0);
    return true;
  }
}

/* Location:
 * Qualified Name:     android.media.SubtitleController.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */