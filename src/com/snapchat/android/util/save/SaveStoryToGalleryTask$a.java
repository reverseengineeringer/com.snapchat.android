package com.snapchat.android.util.save;

import cgb;
import com.snapchat.videotranscoder.task.Task.DoneCallback;
import com.snapchat.videotranscoder.task.Task.Status;

final class SaveStoryToGalleryTask$a
  implements Task.DoneCallback
{
  public final void done(@cgb Task.Status arg1)
  {
    synchronized (val$transcodingDoneSynchronizationObject)
    {
      val$transcodingDoneSynchronizationObject.notify();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.util.save.SaveStoryToGalleryTask.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */