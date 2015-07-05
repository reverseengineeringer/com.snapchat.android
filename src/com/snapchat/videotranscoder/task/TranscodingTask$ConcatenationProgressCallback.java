package com.snapchat.videotranscoder.task;

import cgb;

class TranscodingTask$ConcatenationProgressCallback
  implements Task.ProgressUpdateCallback
{
  final MediaSource mMediaSource;
  final long mSourceDuration;
  final Task.ProgressUpdateCallback mTotalProgressUpdateCallback;
  
  public TranscodingTask$ConcatenationProgressCallback(TranscodingTask paramTranscodingTask, @cgb MediaSource paramMediaSource, @cgb Task.ProgressUpdateCallback paramProgressUpdateCallback)
  {
    mMediaSource = paramMediaSource;
    mTotalProgressUpdateCallback = paramProgressUpdateCallback;
    mSourceDuration = paramMediaSource.getDisplayTimeMs();
  }
  
  public void onProgressUpdated(int paramInt)
  {
    paramInt = (int)((mSourceDuration * paramInt / 100L + TranscodingTask.access$000(this$0)) * 100L / TranscodingTask.access$100(this$0));
    if (paramInt != TranscodingTask.access$200(this$0))
    {
      TranscodingTask.access$202(this$0, paramInt);
      mTotalProgressUpdateCallback.onProgressUpdated(paramInt);
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.videotranscoder.task.TranscodingTask.ConcatenationProgressCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */