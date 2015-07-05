package com.snapchat.videotranscoder.task;

import cgb;
import cgc;
import com.snapchat.videotranscoder.cts.InputSurface;
import com.snapchat.videotranscoder.rendering.VideoFilterRenderer;
import com.snapchat.videotranscoder.utils.TranscodingResources;
import com.snapchat.videotranscoder.video.FragmentShader.Filter;

public class VideoFilterRenderingTask
  extends Task
{
  private static final int ABORT_TIMEOUT = 100;
  private static final float NORMAL_VOLUME = 1.0F;
  private static final String TAG = "VideoFilterRenderingTask";
  private final Object mAbortLock = new Object();
  private volatile boolean mAborted = false;
  private VideoFilterRenderer mCurrentRenderer;
  private final InputSurface mDisplaySurface;
  private final FragmentShader.Filter mLeftFilter;
  private final FragmentShader.Filter mRightFilter;
  private final VideoFileMediaSource mSource;
  private final TranscodingResources mTranscodingResources;
  private float mVolume = 1.0F;
  
  public VideoFilterRenderingTask(@cgb TranscodingResources paramTranscodingResources, @cgb VideoFileMediaSource paramVideoFileMediaSource, @cgb FragmentShader.Filter paramFilter1, @cgb FragmentShader.Filter paramFilter2, @cgb InputSurface paramInputSurface)
  {
    if (paramTranscodingResources == null) {
      throw new NullPointerException("transcodingResources is null");
    }
    if (paramVideoFileMediaSource == null) {
      throw new NullPointerException("mediaSource is null");
    }
    if (paramFilter1 == null) {
      throw new NullPointerException("leftFilter is null");
    }
    if (paramFilter2 == null) {
      throw new NullPointerException("rightFilter is null");
    }
    if (paramInputSurface == null) {
      throw new NullPointerException("displaySurface is null");
    }
    mTranscodingResources = paramTranscodingResources;
    mSource = paramVideoFileMediaSource;
    mDisplaySurface = paramInputSurface;
    mLeftFilter = paramFilter1;
    mRightFilter = paramFilter2;
  }
  
  private void renderVideo(@cgb VideoFileMediaSource paramVideoFileMediaSource, @cgb InputSurface paramInputSurface, @cgc Task.ProgressUpdateCallback paramProgressUpdateCallback)
  {
    mCurrentRenderer = new VideoFilterRenderer(mTranscodingResources, paramVideoFileMediaSource, paramInputSurface);
    mCurrentRenderer.prepareThreads();
    mCurrentRenderer.changeFilter(mLeftFilter, mRightFilter);
    mCurrentRenderer.setVolume(mVolume);
    if (paramProgressUpdateCallback != null) {
      paramProgressUpdateCallback.onProgressUpdated(0);
    }
    mCurrentRenderer.render(null);
    release();
  }
  
  public void changeFilter(@cgb FragmentShader.Filter paramFilter1, @cgb FragmentShader.Filter paramFilter2)
  {
    if (mCurrentRenderer == null) {
      throw new NullPointerException();
    }
    mCurrentRenderer.changeFilter(paramFilter1, paramFilter2);
  }
  
  public void changeSplit(float paramFloat)
  {
    if (mCurrentRenderer == null) {
      throw new NullPointerException();
    }
    mCurrentRenderer.changeSplit(paramFloat);
  }
  
  public void release()
  {
    if (mCurrentRenderer != null)
    {
      mCurrentRenderer.release();
      mCurrentRenderer = null;
    }
  }
  
  /* Error */
  public void run(@cgc Task.ProgressUpdateCallback arg1)
  {
    // Byte code:
    //   0: aload_0
    //   1: getstatic 122	com/snapchat/videotranscoder/task/Task$Status:RUNNING	Lcom/snapchat/videotranscoder/task/Task$Status;
    //   4: invokevirtual 126	com/snapchat/videotranscoder/task/VideoFilterRenderingTask:setStatus	(Lcom/snapchat/videotranscoder/task/Task$Status;)V
    //   7: aload_0
    //   8: aload_0
    //   9: getfield 64	com/snapchat/videotranscoder/task/VideoFilterRenderingTask:mSource	Lcom/snapchat/videotranscoder/task/VideoFileMediaSource;
    //   12: aload_0
    //   13: getfield 66	com/snapchat/videotranscoder/task/VideoFilterRenderingTask:mDisplaySurface	Lcom/snapchat/videotranscoder/cts/InputSurface;
    //   16: aload_1
    //   17: invokespecial 128	com/snapchat/videotranscoder/task/VideoFilterRenderingTask:renderVideo	(Lcom/snapchat/videotranscoder/task/VideoFileMediaSource;Lcom/snapchat/videotranscoder/cts/InputSurface;Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;)V
    //   20: aload_0
    //   21: getstatic 131	com/snapchat/videotranscoder/task/Task$Status:FINISHED	Lcom/snapchat/videotranscoder/task/Task$Status;
    //   24: invokevirtual 126	com/snapchat/videotranscoder/task/VideoFilterRenderingTask:setStatus	(Lcom/snapchat/videotranscoder/task/Task$Status;)V
    //   27: aload_0
    //   28: getfield 41	com/snapchat/videotranscoder/task/VideoFilterRenderingTask:mAbortLock	Ljava/lang/Object;
    //   31: astore_1
    //   32: aload_1
    //   33: monitorenter
    //   34: aload_0
    //   35: iconst_1
    //   36: putfield 43	com/snapchat/videotranscoder/task/VideoFilterRenderingTask:mAborted	Z
    //   39: aload_0
    //   40: getfield 41	com/snapchat/videotranscoder/task/VideoFilterRenderingTask:mAbortLock	Ljava/lang/Object;
    //   43: invokevirtual 134	java/lang/Object:notifyAll	()V
    //   46: aload_1
    //   47: monitorexit
    //   48: return
    //   49: astore_2
    //   50: aload_1
    //   51: monitorexit
    //   52: aload_2
    //   53: athrow
    //   54: astore_1
    //   55: aload_1
    //   56: invokevirtual 137	java/lang/RuntimeException:printStackTrace	()V
    //   59: aload_0
    //   60: getfield 41	com/snapchat/videotranscoder/task/VideoFilterRenderingTask:mAbortLock	Ljava/lang/Object;
    //   63: astore_1
    //   64: aload_1
    //   65: monitorenter
    //   66: aload_0
    //   67: iconst_1
    //   68: putfield 43	com/snapchat/videotranscoder/task/VideoFilterRenderingTask:mAborted	Z
    //   71: aload_0
    //   72: getfield 41	com/snapchat/videotranscoder/task/VideoFilterRenderingTask:mAbortLock	Ljava/lang/Object;
    //   75: invokevirtual 134	java/lang/Object:notifyAll	()V
    //   78: aload_1
    //   79: monitorexit
    //   80: return
    //   81: astore_2
    //   82: aload_1
    //   83: monitorexit
    //   84: aload_2
    //   85: athrow
    //   86: astore_1
    //   87: new 139	com/snapchat/videotranscoder/task/TranscodingException
    //   90: dup
    //   91: new 141	java/lang/StringBuilder
    //   94: dup
    //   95: ldc -113
    //   97: invokespecial 144	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   100: aload_1
    //   101: invokevirtual 148	java/lang/Exception:toString	()Ljava/lang/String;
    //   104: invokevirtual 152	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   107: invokevirtual 153	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   110: aload_1
    //   111: invokespecial 156	com/snapchat/videotranscoder/task/TranscodingException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   114: athrow
    //   115: astore_2
    //   116: aload_0
    //   117: getfield 41	com/snapchat/videotranscoder/task/VideoFilterRenderingTask:mAbortLock	Ljava/lang/Object;
    //   120: astore_1
    //   121: aload_1
    //   122: monitorenter
    //   123: aload_0
    //   124: iconst_1
    //   125: putfield 43	com/snapchat/videotranscoder/task/VideoFilterRenderingTask:mAborted	Z
    //   128: aload_0
    //   129: getfield 41	com/snapchat/videotranscoder/task/VideoFilterRenderingTask:mAbortLock	Ljava/lang/Object;
    //   132: invokevirtual 134	java/lang/Object:notifyAll	()V
    //   135: aload_1
    //   136: monitorexit
    //   137: aload_2
    //   138: athrow
    //   139: astore_2
    //   140: aload_1
    //   141: monitorexit
    //   142: aload_2
    //   143: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	144	0	this	VideoFilterRenderingTask
    //   49	4	2	localObject1	Object
    //   81	4	2	localObject2	Object
    //   115	23	2	localObject3	Object
    //   139	4	2	localObject4	Object
    // Exception table:
    //   from	to	target	type
    //   34	48	49	finally
    //   50	52	49	finally
    //   0	27	54	java/lang/RuntimeException
    //   66	80	81	finally
    //   82	84	81	finally
    //   0	27	86	java/lang/Exception
    //   0	27	115	finally
    //   55	59	115	finally
    //   87	115	115	finally
    //   123	137	139	finally
    //   140	142	139	finally
  }
  
  public void setVolume(float paramFloat)
  {
    mVolume = paramFloat;
    if (mCurrentRenderer != null) {
      mCurrentRenderer.setVolume(mVolume);
    }
  }
  
  public Task.Status tryAbort()
  {
    if (mCurrentRenderer != null) {
      mCurrentRenderer.abort();
    }
    setStatus(Task.Status.ABORTED);
    return Task.Status.RUNNING;
  }
  
  public void waitForAbort()
  {
    synchronized (mAbortLock)
    {
      if ((!mAborted) && (mCurrentRenderer != null)) {
        mAbortLock.wait(100L);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.videotranscoder.task.VideoFilterRenderingTask
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */