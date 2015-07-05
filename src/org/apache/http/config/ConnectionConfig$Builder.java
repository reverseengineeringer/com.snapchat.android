package org.apache.http.config;

import java.nio.charset.Charset;
import java.nio.charset.CodingErrorAction;
import org.apache.http.Consts;

public class ConnectionConfig$Builder
{
  private int bufferSize;
  private Charset charset;
  private int fragmentSizeHint = -1;
  private CodingErrorAction malformedInputAction;
  private MessageConstraints messageConstraints;
  private CodingErrorAction unmappableInputAction;
  
  public ConnectionConfig build()
  {
    Charset localCharset2 = charset;
    Charset localCharset1 = localCharset2;
    if (localCharset2 == null) {
      if (malformedInputAction == null)
      {
        localCharset1 = localCharset2;
        if (unmappableInputAction == null) {}
      }
      else
      {
        localCharset1 = Consts.ASCII;
      }
    }
    int i;
    if (bufferSize > 0)
    {
      i = bufferSize;
      if (fragmentSizeHint < 0) {
        break label89;
      }
    }
    label89:
    for (int j = fragmentSizeHint;; j = i)
    {
      return new ConnectionConfig(i, j, localCharset1, malformedInputAction, unmappableInputAction, messageConstraints);
      i = 8192;
      break;
    }
  }
  
  public Builder setBufferSize(int paramInt)
  {
    bufferSize = paramInt;
    return this;
  }
  
  public Builder setCharset(Charset paramCharset)
  {
    charset = paramCharset;
    return this;
  }
  
  public Builder setFragmentSizeHint(int paramInt)
  {
    fragmentSizeHint = paramInt;
    return this;
  }
  
  public Builder setMalformedInputAction(CodingErrorAction paramCodingErrorAction)
  {
    malformedInputAction = paramCodingErrorAction;
    if ((paramCodingErrorAction != null) && (charset == null)) {
      charset = Consts.ASCII;
    }
    return this;
  }
  
  public Builder setMessageConstraints(MessageConstraints paramMessageConstraints)
  {
    messageConstraints = paramMessageConstraints;
    return this;
  }
  
  public Builder setUnmappableInputAction(CodingErrorAction paramCodingErrorAction)
  {
    unmappableInputAction = paramCodingErrorAction;
    if ((paramCodingErrorAction != null) && (charset == null)) {
      charset = Consts.ASCII;
    }
    return this;
  }
}

/* Location:
 * Qualified Name:     org.apache.http.config.ConnectionConfig.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */