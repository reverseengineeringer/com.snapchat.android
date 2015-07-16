package com.snapchat.videotranscoder.utils;

import android.media.MediaMetadataRetriever;
import chc;
import java.io.File;
import java.io.IOException;

public class VideoMetadataReader
{
  private static final String TAG = "VideoMetadataReader";
  private MediaMetadataRetriever mMediaMetadataRetriever;
  private final File mVideoFile;
  
  public VideoMetadataReader(@chc File paramFile)
  {
    this(paramFile, new MediaMetadataRetriever());
  }
  
  protected VideoMetadataReader(@chc File paramFile, @chc MediaMetadataRetriever paramMediaMetadataRetriever)
  {
    if (paramFile == null) {
      throw new NullPointerException("videoFile is null");
    }
    mVideoFile = paramFile;
    mMediaMetadataRetriever = paramMediaMetadataRetriever;
    mMediaMetadataRetriever.setDataSource(paramFile.toString());
  }
  
  private void checkExists()
  {
    if (!mVideoFile.exists()) {
      throw new IOException("File not found: " + mVideoFile.toString());
    }
  }
  
  private void checkNotReleased()
  {
    if (released()) {
      throw new IllegalStateException("VideoMetadataReader already released!");
    }
  }
  
  private void checkPreconditions()
  {
    checkNotReleased();
    checkExists();
  }
  
  private String getMetadata(int paramInt)
  {
    String str = mMediaMetadataRetriever.extractMetadata(paramInt);
    if (str == null) {
      throw new IOException("Unable to extract metadata file:" + mVideoFile.toString());
    }
    return str;
  }
  
  private boolean released()
  {
    return mMediaMetadataRetriever == null;
  }
  
  public void finalize()
  {
    if (!released()) {
      release();
    }
  }
  
  public long getDurationMs()
  {
    checkPreconditions();
    String str = getMetadata(9);
    try
    {
      long l = Long.parseLong(str);
      return l;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      throw new IOException("Duration string metadata is not valid: " + str, localNumberFormatException);
    }
  }
  
  public int getHeight()
  {
    checkPreconditions();
    String str = getMetadata(19);
    try
    {
      int i = Integer.parseInt(str);
      return i;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      throw new IOException("Height string metadata is not valid: " + str, localNumberFormatException);
    }
  }
  
  public String getMimeType()
  {
    checkPreconditions();
    return getMetadata(12);
  }
  
  public int getWidth()
  {
    checkPreconditions();
    String str = getMetadata(18);
    try
    {
      int i = Integer.parseInt(str);
      return i;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      throw new IOException("Width string metadata is not valid: " + str, localNumberFormatException);
    }
  }
  
  public void release()
  {
    if (released()) {
      return;
    }
    mMediaMetadataRetriever.release();
    mMediaMetadataRetriever = null;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.videotranscoder.utils.VideoMetadataReader
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */