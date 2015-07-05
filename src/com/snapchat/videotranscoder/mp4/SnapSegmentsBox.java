package com.snapchat.videotranscoder.mp4;

import ao;
import ar;
import cgb;
import ev;
import java.nio.ByteBuffer;

public class SnapSegmentsBox
  extends ev
{
  public static final String TYPE = "sseg";
  private static final int VERSION = 1;
  private SnapSegments mSnapSegments;
  
  public SnapSegmentsBox()
  {
    super("sseg");
    setVersion(1);
  }
  
  public void _parseDetails(ByteBuffer paramByteBuffer)
  {
    parseVersionAndFlags(paramByteBuffer);
    if (getVersion() != 1) {
      throw new IllegalStateException("Version does not match expected value.");
    }
    mSnapSegments = new SnapSegments(ao.a(paramByteBuffer, paramByteBuffer.remaining()));
  }
  
  protected void getContent(ByteBuffer paramByteBuffer)
  {
    writeVersionAndFlags(paramByteBuffer);
    paramByteBuffer.put(ar.a(mSnapSegments.toString()));
  }
  
  protected long getContentSize()
  {
    return ar.b(mSnapSegments.toString()) + 4;
  }
  
  public SnapSegments getSnapSegments()
  {
    if (!isParsed()) {
      parseDetails();
    }
    return mSnapSegments;
  }
  
  public void setSnapSegments(@cgb SnapSegments paramSnapSegments)
  {
    mSnapSegments = paramSnapSegments;
  }
  
  public String toString()
  {
    return "SnapSegmentsBox[segmentTimesMs=" + mSnapSegments.toString() + "]";
  }
}

/* Location:
 * Qualified Name:     com.snapchat.videotranscoder.mp4.SnapSegmentsBox
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */