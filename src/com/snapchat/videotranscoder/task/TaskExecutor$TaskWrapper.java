package com.snapchat.videotranscoder.task;

import cgb;
import cgc;

class TaskExecutor$TaskWrapper
{
  Task.DoneCallback mDoneCallback;
  Task.ProgressUpdateCallback mProgressUpdateCallback;
  Task mTask;
  
  public TaskExecutor$TaskWrapper(TaskExecutor paramTaskExecutor, @cgb Task paramTask, @cgc Task.DoneCallback paramDoneCallback, @cgc Task.ProgressUpdateCallback paramProgressUpdateCallback)
  {
    mTask = paramTask;
    mDoneCallback = paramDoneCallback;
    mProgressUpdateCallback = paramProgressUpdateCallback;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.videotranscoder.task.TaskExecutor.TaskWrapper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */