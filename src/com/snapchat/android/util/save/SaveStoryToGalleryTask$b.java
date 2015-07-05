package com.snapchat.android.util.save;

import com.snapchat.videotranscoder.task.Task.ProgressUpdateCallback;

final class SaveStoryToGalleryTask$b
  implements Task.ProgressUpdateCallback
{
  SaveStoryToGalleryTask$b(SaveStoryToGalleryTask paramSaveStoryToGalleryTask) {}
  
  public final void onProgressUpdated(int paramInt)
  {
    paramInt = Math.min(100, SaveStoryToGalleryTask.a(this$0) + SaveStoryToGalleryTask.b(this$0) * paramInt / 100);
    SaveStoryToGalleryTask.a(this$0, new Integer[] { Integer.valueOf(paramInt) });
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.util.save.SaveStoryToGalleryTask.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */