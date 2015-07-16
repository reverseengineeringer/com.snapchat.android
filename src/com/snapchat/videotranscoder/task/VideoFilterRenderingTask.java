package com.snapchat.videotranscoder.task;

import chc;
import chd;
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
  
  public VideoFilterRenderingTask(@chc TranscodingResources paramTranscodingResources, @chc VideoFileMediaSource paramVideoFileMediaSource, @chc FragmentShader.Filter paramFilter1, @chc FragmentShader.Filter paramFilter2, @chc InputSurface paramInputSurface)
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
  
  private void renderVideo(@chc VideoFileMediaSource paramVideoFileMediaSource, @chc InputSurface paramInputSurface, @chd Task.ProgressUpdateCallback paramProgressUpdateCallback)
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
  
  public void changeFilter(@chc FragmentShader.Filter paramFilter1, @chc FragmentShader.Filter paramFilter2)
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
  public void run(@chd Task.ProgressUpdateCallback arg1)
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
    //   39: aload_1
    //   40: monitorexit
    //   41: return
    //   42: astore_2
    //   43: aload_1
    //   44: monitorexit
    //   45: aload_2
    //   46: athrow
    //   47: astore_1
    //   48: aload_1
    //   49: invokevirtual 134	java/lang/RuntimeException:printStackTrace	()V
    //   52: aload_0
    //   53: getfield 41	com/snapchat/videotranscoder/task/VideoFilterRenderingTask:mAbortLock	Ljava/lang/Object;
    //   56: astore_1
    //   57: aload_1
    //   58: monitorenter
    //   59: aload_0
    //   60: iconst_1
    //   61: putfield 43	com/snapchat/videotranscoder/task/VideoFilterRenderingTask:mAborted	Z
    //   64: aload_1
    //   65: monitorexit
    //   66: return
    //   67: astore_2
    //   68: aload_1
    //   69: monitorexit
    //   70: aload_2
    //   71: athrow
    //   72: astore_1
    //   73: new 136	com/snapchat/videotranscoder/task/TranscodingException
    //   76: dup
    //   77: new 138	java/lang/StringBuilder
    //   80: dup
    //   81: ldc -116
    //   83: invokespecial 141	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   86: aload_1
    //   87: invokevirtual 145	java/lang/Exception:toString	()Ljava/lang/String;
    //   90: invokevirtual 149	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   93: invokevirtual 150	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   96: aload_1
    //   97: invokespecial 153	com/snapchat/videotranscoder/task/TranscodingException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   100: athrow
    //   101: astore_2
    //   102: aload_0
    //   103: getfield 41	com/snapchat/videotranscoder/task/VideoFilterRenderingTask:mAbortLock	Ljava/lang/Object;
    //   106: astore_1
    //   107: aload_1
    //   108: monitorenter
    //   109: aload_0
    //   110: iconst_1
    //   111: putfield 43	com/snapchat/videotranscoder/task/VideoFilterRenderingTask:mAborted	Z
    //   114: aload_1
    //   115: monitorexit
    //   116: aload_2
    //   117: athrow
    //   118: astore_2
    //   119: aload_1
    //   120: monitorexit
    //   121: aload_2
    //   122: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	123	0	this	VideoFilterRenderingTask
    //   42	4	2	localObject1	Object
    //   67	4	2	localObject2	Object
    //   101	16	2	localObject3	Object
    //   118	4	2	localObject4	Object
    // Exception table:
    //   from	to	target	type
    //   34	41	42	finally
    //   43	45	42	finally
    //   0	27	47	java/lang/RuntimeException
    //   59	66	67	finally
    //   68	70	67	finally
    //   0	27	72	java/lang/Exception
    //   0	27	101	finally
    //   48	52	101	finally
    //   73	101	101	finally
    //   109	116	118	finally
    //   119	121	118	finally
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
      while ((!mAborted) && (mCurrentRenderer != null)) {}
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.videotranscoder.task.VideoFilterRenderingTask
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */