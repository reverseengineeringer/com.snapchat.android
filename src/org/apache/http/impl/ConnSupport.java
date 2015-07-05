package org.apache.http.impl;

import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CodingErrorAction;
import org.apache.http.config.ConnectionConfig;

public final class ConnSupport
{
  public static CharsetDecoder createDecoder(ConnectionConfig paramConnectionConfig)
  {
    if (paramConnectionConfig == null) {
      return null;
    }
    Object localObject2 = paramConnectionConfig.getCharset();
    Object localObject1 = paramConnectionConfig.getMalformedInputAction();
    CodingErrorAction localCodingErrorAction = paramConnectionConfig.getUnmappableInputAction();
    if (localObject2 != null)
    {
      localObject2 = ((Charset)localObject2).newDecoder();
      if (localObject1 != null)
      {
        paramConnectionConfig = (ConnectionConfig)localObject1;
        localObject1 = ((CharsetDecoder)localObject2).onMalformedInput(paramConnectionConfig);
        if (localCodingErrorAction == null) {
          break label61;
        }
      }
      label61:
      for (paramConnectionConfig = localCodingErrorAction;; paramConnectionConfig = CodingErrorAction.REPORT)
      {
        return ((CharsetDecoder)localObject1).onUnmappableCharacter(paramConnectionConfig);
        paramConnectionConfig = CodingErrorAction.REPORT;
        break;
      }
    }
    return null;
  }
  
  public static CharsetEncoder createEncoder(ConnectionConfig paramConnectionConfig)
  {
    if (paramConnectionConfig == null) {}
    do
    {
      return null;
      localObject2 = paramConnectionConfig.getCharset();
    } while (localObject2 == null);
    Object localObject1 = paramConnectionConfig.getMalformedInputAction();
    CodingErrorAction localCodingErrorAction = paramConnectionConfig.getUnmappableInputAction();
    Object localObject2 = ((Charset)localObject2).newEncoder();
    if (localObject1 != null)
    {
      paramConnectionConfig = (ConnectionConfig)localObject1;
      localObject1 = ((CharsetEncoder)localObject2).onMalformedInput(paramConnectionConfig);
      if (localCodingErrorAction == null) {
        break label61;
      }
    }
    label61:
    for (paramConnectionConfig = localCodingErrorAction;; paramConnectionConfig = CodingErrorAction.REPORT)
    {
      return ((CharsetEncoder)localObject1).onUnmappableCharacter(paramConnectionConfig);
      paramConnectionConfig = CodingErrorAction.REPORT;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     org.apache.http.impl.ConnSupport
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */