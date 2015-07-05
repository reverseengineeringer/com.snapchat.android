package com.snapchat.videotranscoder.task;

class Task$1
  implements Runnable
{
  Task$1(Task paramTask1, Task paramTask2, Task.ProgressUpdateCallback paramProgressUpdateCallback, Task.DoneCallback paramDoneCallback) {}
  
  public void run()
  {
    try
    {
      val$thisTask.run(val$progressUpdateCallback);
      if (val$doneCallback != null) {
        val$doneCallback.done(val$thisTask.getStatus());
      }
      return;
    }
    catch (SetupException localSetupException)
    {
      while (val$doneCallback == null) {}
      val$doneCallback.done(Task.Status.CONFIG_ERROR);
      return;
    }
    catch (TranscodingException localTranscodingException)
    {
      while (val$doneCallback == null) {}
      val$doneCallback.done(Task.Status.FAILED);
      return;
    }
    catch (Throwable localThrowable)
    {
      while (val$doneCallback == null) {}
      val$doneCallback.done(Task.Status.FAILED);
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.videotranscoder.task.Task.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */