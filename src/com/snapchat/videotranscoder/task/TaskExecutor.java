package com.snapchat.videotranscoder.task;

import cgb;
import cgc;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

public class TaskExecutor
{
  private static final String TAG = "TaskExecutor";
  private TaskWrapper mCurrentTask = null;
  private final Lock mTaskLock = new ReentrantLock();
  private final Queue<TaskWrapper> mTaskQueue = new ConcurrentLinkedQueue();
  
  private void clearCurrentTask()
  {
    mTaskLock.lock();
    mCurrentTask = null;
    mTaskLock.unlock();
  }
  
  private void completeTask(@cgb TaskWrapper paramTaskWrapper, Task.Status paramStatus)
  {
    paramTaskWrapper = mDoneCallback;
    if (paramTaskWrapper != null) {
      paramTaskWrapper.done(paramStatus);
    }
    clearCurrentTask();
    scheduleNext();
  }
  
  private void scheduleNext()
  {
    mTaskLock.lock();
    if ((mCurrentTask != null) || (mTaskQueue.isEmpty()))
    {
      mTaskLock.unlock();
      return;
    }
    final TaskWrapper localTaskWrapper = (TaskWrapper)mTaskQueue.poll();
    mCurrentTask = localTaskWrapper;
    mTaskLock.unlock();
    mTask.runAsync(new Task.DoneCallback()
    {
      public void done(Task.Status paramAnonymousStatus)
      {
        TaskExecutor.this.completeTask(localTaskWrapper, paramAnonymousStatus);
      }
    }, mProgressUpdateCallback);
  }
  
  public void execute(@cgb Task paramTask, @cgc Task.DoneCallback paramDoneCallback, @cgc Task.ProgressUpdateCallback paramProgressUpdateCallback)
  {
    if (paramTask == null) {
      throw new NullPointerException("task is null");
    }
    mTaskLock.lock();
    mTaskQueue.add(new TaskWrapper(paramTask, paramDoneCallback, paramProgressUpdateCallback));
    mTaskLock.unlock();
    scheduleNext();
  }
  
  /* Error */
  public void tryAbort(@cgb Task paramTask)
  {
    // Byte code:
    //   0: aload_1
    //   1: ifnonnull +13 -> 14
    //   4: new 101	java/lang/NullPointerException
    //   7: dup
    //   8: ldc 103
    //   10: invokespecial 106	java/lang/NullPointerException:<init>	(Ljava/lang/String;)V
    //   13: athrow
    //   14: aload_0
    //   15: getfield 34	com/snapchat/videotranscoder/task/TaskExecutor:mTaskLock	Ljava/util/concurrent/locks/Lock;
    //   18: invokeinterface 49 1 0
    //   23: aload_1
    //   24: invokevirtual 120	com/snapchat/videotranscoder/task/Task:tryAbort	()Lcom/snapchat/videotranscoder/task/Task$Status;
    //   27: astore_2
    //   28: aload_2
    //   29: getstatic 126	com/snapchat/videotranscoder/task/Task$Status:RUNNING	Lcom/snapchat/videotranscoder/task/Task$Status;
    //   32: if_acmpeq +87 -> 119
    //   35: aload_0
    //   36: getfield 29	com/snapchat/videotranscoder/task/TaskExecutor:mTaskQueue	Ljava/util/Queue;
    //   39: invokeinterface 130 1 0
    //   44: astore_3
    //   45: aload_3
    //   46: invokeinterface 135 1 0
    //   51: ifeq +52 -> 103
    //   54: aload_3
    //   55: invokeinterface 138 1 0
    //   60: checkcast 8	com/snapchat/videotranscoder/task/TaskExecutor$TaskWrapper
    //   63: astore 4
    //   65: aload 4
    //   67: getfield 83	com/snapchat/videotranscoder/task/TaskExecutor$TaskWrapper:mTask	Lcom/snapchat/videotranscoder/task/Task;
    //   70: aload_1
    //   71: if_acmpne -26 -> 45
    //   74: aload_0
    //   75: getfield 29	com/snapchat/videotranscoder/task/TaskExecutor:mTaskQueue	Ljava/util/Queue;
    //   78: aload 4
    //   80: invokeinterface 141 2 0
    //   85: pop
    //   86: aload 4
    //   88: getfield 57	com/snapchat/videotranscoder/task/TaskExecutor$TaskWrapper:mDoneCallback	Lcom/snapchat/videotranscoder/task/Task$DoneCallback;
    //   91: astore_3
    //   92: aload_3
    //   93: ifnull +10 -> 103
    //   96: aload_3
    //   97: aload_2
    //   98: invokeinterface 63 2 0
    //   103: aload_0
    //   104: getfield 36	com/snapchat/videotranscoder/task/TaskExecutor:mCurrentTask	Lcom/snapchat/videotranscoder/task/TaskExecutor$TaskWrapper;
    //   107: getfield 83	com/snapchat/videotranscoder/task/TaskExecutor$TaskWrapper:mTask	Lcom/snapchat/videotranscoder/task/Task;
    //   110: aload_1
    //   111: if_acmpne +8 -> 119
    //   114: aload_0
    //   115: aconst_null
    //   116: putfield 36	com/snapchat/videotranscoder/task/TaskExecutor:mCurrentTask	Lcom/snapchat/videotranscoder/task/TaskExecutor$TaskWrapper;
    //   119: aload_0
    //   120: getfield 34	com/snapchat/videotranscoder/task/TaskExecutor:mTaskLock	Ljava/util/concurrent/locks/Lock;
    //   123: invokeinterface 52 1 0
    //   128: aload_0
    //   129: invokespecial 68	com/snapchat/videotranscoder/task/TaskExecutor:scheduleNext	()V
    //   132: return
    //   133: astore_2
    //   134: aload_1
    //   135: getstatic 144	com/snapchat/videotranscoder/task/Task$Status:FAILED	Lcom/snapchat/videotranscoder/task/Task$Status;
    //   138: invokevirtual 147	com/snapchat/videotranscoder/task/Task:setStatus	(Lcom/snapchat/videotranscoder/task/Task$Status;)V
    //   141: getstatic 144	com/snapchat/videotranscoder/task/Task$Status:FAILED	Lcom/snapchat/videotranscoder/task/Task$Status;
    //   144: astore_3
    //   145: new 149	com/snapchat/videotranscoder/task/TranscodingException
    //   148: dup
    //   149: aload_2
    //   150: invokevirtual 153	java/lang/Throwable:toString	()Ljava/lang/String;
    //   153: aload_2
    //   154: invokespecial 156	com/snapchat/videotranscoder/task/TranscodingException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   157: athrow
    //   158: astore_2
    //   159: aload_3
    //   160: getstatic 126	com/snapchat/videotranscoder/task/Task$Status:RUNNING	Lcom/snapchat/videotranscoder/task/Task$Status;
    //   163: if_acmpeq +93 -> 256
    //   166: aload_0
    //   167: getfield 29	com/snapchat/videotranscoder/task/TaskExecutor:mTaskQueue	Ljava/util/Queue;
    //   170: invokeinterface 130 1 0
    //   175: astore 4
    //   177: aload 4
    //   179: invokeinterface 135 1 0
    //   184: ifeq +56 -> 240
    //   187: aload 4
    //   189: invokeinterface 138 1 0
    //   194: checkcast 8	com/snapchat/videotranscoder/task/TaskExecutor$TaskWrapper
    //   197: astore 5
    //   199: aload 5
    //   201: getfield 83	com/snapchat/videotranscoder/task/TaskExecutor$TaskWrapper:mTask	Lcom/snapchat/videotranscoder/task/Task;
    //   204: aload_1
    //   205: if_acmpne -28 -> 177
    //   208: aload_0
    //   209: getfield 29	com/snapchat/videotranscoder/task/TaskExecutor:mTaskQueue	Ljava/util/Queue;
    //   212: aload 5
    //   214: invokeinterface 141 2 0
    //   219: pop
    //   220: aload 5
    //   222: getfield 57	com/snapchat/videotranscoder/task/TaskExecutor$TaskWrapper:mDoneCallback	Lcom/snapchat/videotranscoder/task/Task$DoneCallback;
    //   225: astore 4
    //   227: aload 4
    //   229: ifnull +11 -> 240
    //   232: aload 4
    //   234: aload_3
    //   235: invokeinterface 63 2 0
    //   240: aload_0
    //   241: getfield 36	com/snapchat/videotranscoder/task/TaskExecutor:mCurrentTask	Lcom/snapchat/videotranscoder/task/TaskExecutor$TaskWrapper;
    //   244: getfield 83	com/snapchat/videotranscoder/task/TaskExecutor$TaskWrapper:mTask	Lcom/snapchat/videotranscoder/task/Task;
    //   247: aload_1
    //   248: if_acmpne +8 -> 256
    //   251: aload_0
    //   252: aconst_null
    //   253: putfield 36	com/snapchat/videotranscoder/task/TaskExecutor:mCurrentTask	Lcom/snapchat/videotranscoder/task/TaskExecutor$TaskWrapper;
    //   256: aload_0
    //   257: getfield 34	com/snapchat/videotranscoder/task/TaskExecutor:mTaskLock	Ljava/util/concurrent/locks/Lock;
    //   260: invokeinterface 52 1 0
    //   265: aload_0
    //   266: invokespecial 68	com/snapchat/videotranscoder/task/TaskExecutor:scheduleNext	()V
    //   269: aload_2
    //   270: athrow
    //   271: astore_2
    //   272: aconst_null
    //   273: astore_3
    //   274: goto -115 -> 159
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	277	0	this	TaskExecutor
    //   0	277	1	paramTask	Task
    //   27	71	2	localStatus	Task.Status
    //   133	21	2	localThrowable	Throwable
    //   158	112	2	localObject1	Object
    //   271	1	2	localObject2	Object
    //   44	230	3	localObject3	Object
    //   63	170	4	localObject4	Object
    //   197	24	5	localTaskWrapper	TaskWrapper
    // Exception table:
    //   from	to	target	type
    //   23	28	133	java/lang/Throwable
    //   145	158	158	finally
    //   23	28	271	finally
    //   134	145	271	finally
  }
  
  class TaskWrapper
  {
    Task.DoneCallback mDoneCallback;
    Task.ProgressUpdateCallback mProgressUpdateCallback;
    Task mTask;
    
    public TaskWrapper(@cgb Task paramTask, @cgc Task.DoneCallback paramDoneCallback, @cgc Task.ProgressUpdateCallback paramProgressUpdateCallback)
    {
      mTask = paramTask;
      mDoneCallback = paramDoneCallback;
      mProgressUpdateCallback = paramProgressUpdateCallback;
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.videotranscoder.task.TaskExecutor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */