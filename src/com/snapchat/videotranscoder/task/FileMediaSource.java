package com.snapchat.videotranscoder.task;

import cgb;
import com.snapchat.videotranscoder.utils.FileUtils;

public abstract class FileMediaSource
  extends MediaSource
{
  private static final String TAG = "FileMediaSource";
  private final String mMediaPath;
  
  public FileMediaSource(@cgb String paramString)
  {
    this(paramString, FileUtils.getInstance());
  }
  
  protected FileMediaSource(@cgb String paramString, @cgb FileUtils paramFileUtils)
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