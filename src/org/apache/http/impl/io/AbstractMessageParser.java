package org.apache.http.impl.io;

import java.util.ArrayList;
import java.util.List;
import org.apache.http.Header;
import org.apache.http.HttpMessage;
import org.apache.http.MessageConstraintException;
import org.apache.http.ParseException;
import org.apache.http.ProtocolException;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.config.MessageConstraints;
import org.apache.http.io.HttpMessageParser;
import org.apache.http.io.SessionInputBuffer;
import org.apache.http.message.BasicLineParser;
import org.apache.http.message.LineParser;
import org.apache.http.params.HttpParamConfig;
import org.apache.http.params.HttpParams;
import org.apache.http.util.Args;
import org.apache.http.util.CharArrayBuffer;

@NotThreadSafe
public abstract class AbstractMessageParser<T extends HttpMessage>
  implements HttpMessageParser<T>
{
  private static final int HEADERS = 1;
  private static final int HEAD_LINE = 0;
  private final List<CharArrayBuffer> headerLines;
  protected final LineParser lineParser;
  private T message;
  private final MessageConstraints messageConstraints;
  private final SessionInputBuffer sessionBuffer;
  private int state;
  
  public AbstractMessageParser(SessionInputBuffer paramSessionInputBuffer, LineParser paramLineParser, MessageConstraints paramMessageConstraints)
  {
    sessionBuffer = ((SessionInputBuffer)Args.notNull(paramSessionInputBuffer, "Session input buffer"));
    if (paramLineParser != null)
    {
      lineParser = paramLineParser;
      if (paramMessageConstraints == null) {
        break label59;
      }
    }
    for (;;)
    {
      messageConstraints = paramMessageConstraints;
      headerLines = new ArrayList();
      state = 0;
      return;
      paramLineParser = BasicLineParser.INSTANCE;
      break;
      label59:
      paramMessageConstraints = MessageConstraints.DEFAULT;
    }
  }
  
  @Deprecated
  public AbstractMessageParser(SessionInputBuffer paramSessionInputBuffer, LineParser paramLineParser, HttpParams paramHttpParams)
  {
    Args.notNull(paramSessionInputBuffer, "Session input buffer");
    Args.notNull(paramHttpParams, "HTTP parameters");
    sessionBuffer = paramSessionInputBuffer;
    messageConstraints = HttpParamConfig.getMessageConstraints(paramHttpParams);
    if (paramLineParser != null) {}
    for (;;)
    {
      lineParser = paramLineParser;
      headerLines = new ArrayList();
      state = 0;
      return;
      paramLineParser = BasicLineParser.INSTANCE;
    }
  }
  
  public static Header[] parseHeaders(SessionInputBuffer paramSessionInputBuffer, int paramInt1, int paramInt2, LineParser paramLineParser)
  {
    ArrayList localArrayList = new ArrayList();
    if (paramLineParser != null) {}
    for (;;)
    {
      return parseHeaders(paramSessionInputBuffer, paramInt1, paramInt2, paramLineParser, localArrayList);
      paramLineParser = BasicLineParser.INSTANCE;
    }
  }
  
  public static Header[] parseHeaders(SessionInputBuffer paramSessionInputBuffer, int paramInt1, int paramInt2, LineParser paramLineParser, List<CharArrayBuffer> paramList)
  {
    int j = 0;
    Args.notNull(paramSessionInputBuffer, "Session input buffer");
    Args.notNull(paramLineParser, "Line parser");
    Args.notNull(paramList, "Header line list");
    Object localObject2 = null;
    Object localObject1 = null;
    for (;;)
    {
      if (localObject1 == null) {
        localObject1 = new CharArrayBuffer(64);
      }
      int i;
      for (;;)
      {
        if ((paramSessionInputBuffer.readLine((CharArrayBuffer)localObject1) == -1) || (((CharArrayBuffer)localObject1).length() <= 0)) {
          break label257;
        }
        if (((((CharArrayBuffer)localObject1).charAt(0) != ' ') && (((CharArrayBuffer)localObject1).charAt(0) != '\t')) || (localObject2 == null)) {
          break label230;
        }
        i = 0;
        while (i < ((CharArrayBuffer)localObject1).length())
        {
          int k = ((CharArrayBuffer)localObject1).charAt(i);
          if ((k != 32) && (k != 9)) {
            break;
          }
          i += 1;
        }
        ((CharArrayBuffer)localObject1).clear();
      }
      if ((paramInt2 > 0) && (((CharArrayBuffer)localObject2).length() + 1 + ((CharArrayBuffer)localObject1).length() - i > paramInt2)) {
        throw new MessageConstraintException("Maximum line length limit exceeded");
      }
      ((CharArrayBuffer)localObject2).append(' ');
      ((CharArrayBuffer)localObject2).append((CharArrayBuffer)localObject1, i, ((CharArrayBuffer)localObject1).length() - i);
      while ((paramInt1 > 0) && (paramList.size() >= paramInt1))
      {
        throw new MessageConstraintException("Maximum header count exceeded");
        label230:
        paramList.add(localObject1);
        Object localObject3 = null;
        localObject2 = localObject1;
        localObject1 = localObject3;
      }
    }
    label257:
    paramSessionInputBuffer = new Header[paramList.size()];
    paramInt1 = j;
    while (paramInt1 < paramList.size())
    {
      localObject1 = (CharArrayBuffer)paramList.get(paramInt1);
      try
      {
        paramSessionInputBuffer[paramInt1] = paramLineParser.parseHeader((CharArrayBuffer)localObject1);
        paramInt1 += 1;
      }
      catch (ParseException paramSessionInputBuffer)
      {
        throw new ProtocolException(paramSessionInputBuffer.getMessage());
      }
    }
    return paramSessionInputBuffer;
  }
  
  public T parse()
  {
    switch (state)
    {
    default: 
      throw new IllegalStateException("Inconsistent parser state");
    }
    try
    {
      message = parseHead(sessionBuffer);
      state = 1;
      Object localObject = parseHeaders(sessionBuffer, messageConstraints.getMaxHeaderCount(), messageConstraints.getMaxLineLength(), lineParser, headerLines);
      message.setHeaders((Header[])localObject);
      localObject = message;
      message = null;
      headerLines.clear();
      state = 0;
      return (T)localObject;
    }
    catch (ParseException localParseException)
    {
      throw new ProtocolException(localParseException.getMessage(), localParseException);
    }
  }
  
  protected abstract T parseHead(SessionInputBuffer paramSessionInputBuffer);
}

/* Location:
 * Qualified Name:     org.apache.http.impl.io.AbstractMessageParser
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */