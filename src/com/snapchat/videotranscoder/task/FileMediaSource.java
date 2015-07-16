package com.snapchat.videotranscoder.task;

import chc;
import com.snapchat.videotranscoder.utils.FileUtils;

public abstract class FileMediaSource
  extends MediaSource
{
  private static final String TAG = "FileMediaSource";
  private final String mMediaPath;
  
  public FileMediaSource(@chc String paramString)
  {
    this(paramString, FileUtils.getInstance());
  }
  
  protected FileMediaSource(@chc String paramString, @chc FileUtils paramFileUtils)
  {
    if (paramString == null) {
      throw new NullPointerException("mediaPath is null");
    }
    if (!paramFileUtils.checkExists(paramString)) {
      throw new IllegalArgumentException("File not found: " + paramString);
    }
    if (!paramFileUtils.isNotZeroBytes(paramString)) {
      throw new IllegalArgumentException("File is empty: " + paramString);
    }
    mMediaPath = paramString;
  }
  
  public String getMediaPath()
  {
    return mMediaPath;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.videotranscoder.task.FileMediaSource
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */