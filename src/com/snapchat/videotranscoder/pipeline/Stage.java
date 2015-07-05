package com.snapchat.videotranscoder.pipeline;

public abstract class Stage
{
  protected static final String TAG = "STAGE";
  protected static final int kTIMEOUT_USEC = 10000;
  public boolean mDone = false;
  protected StageDoneCallback mDoneCallback = null;
  
  protected Stage(StageDoneCallback paramStageDoneCallback)
  {
    mDoneCallback = paramStageDoneCallback;
  }
  
  public abstract void processFrame();
  
  public void stageComplete()
  {
    mDone = true;
    mDoneCallback.done();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.videotranscoder.pipeline.Stage
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */