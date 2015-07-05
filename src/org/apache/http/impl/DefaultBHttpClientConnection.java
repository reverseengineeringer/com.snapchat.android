package org.apache.http.impl;

import java.io.OutputStream;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;
import org.apache.http.HttpClientConnection;
import org.apache.http.HttpEntity;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.config.MessageConstraints;
import org.apache.http.entity.ContentLengthStrategy;
import org.apache.http.impl.io.DefaultHttpRequestWriterFactory;
import org.apache.http.impl.io.DefaultHttpResponseParserFactory;
import org.apache.http.io.HttpMessageParser;
import org.apache.http.io.HttpMessageParserFactory;
import org.apache.http.io.HttpMessageWriter;
import org.apache.http.io.HttpMessageWriterFactory;
import org.apache.http.util.Args;

@NotThreadSafe
public class DefaultBHttpClientConnection
  extends BHttpConnectionBase
  implements HttpClientConnection
{
  private final HttpMessageWriter<HttpRequest> requestWriter;
  private final HttpMessageParser<HttpResponse> responseParser;
  
  public DefaultBHttpClientConnection(int paramInt)
  {
    this(paramInt, paramInt, null, null, null, null, null, null, null);
  }
  
  public DefaultBHttpClientConnection(int paramInt1, int paramInt2, CharsetDecoder paramCharsetDecoder, CharsetEncoder paramCharsetEncoder, MessageConstraints paramMessageConstraints, ContentLengthStrategy paramContentLengthStrategy1, ContentLengthStrategy paramContentLengthStrategy2, HttpMessageWriterFactory<HttpRequest> paramHttpMessageWriterFactory, HttpMessageParserFactory<HttpResponse> paramHttpMessageParserFactory)
  {
    super(paramInt1, paramInt2, paramCharsetDecoder, paramCharsetEncoder, paramMessageConstraints, paramContentLengthStrategy1, paramContentLengthStrategy2);
    if (paramHttpMessageWriterFactory != null)
    {
      requestWriter = paramHttpMessageWriterFactory.create(getSessionOutputBuffer());
      if (paramHttpMessageParserFactory == null) {
        break label66;
      }
    }
    for (;;)
    {
      responseParser = paramHttpMessageParserFactory.create(getSessionInputBuffer(), paramMessageConstraints);
      return;
      paramHttpMessageWriterFactory = DefaultHttpRequestWriterFactory.INSTANCE;
      break;
      label66:
      paramHttpMessageParserFactory = DefaultHttpResponseParserFactory.INSTANCE;
    }
  }
  
  public DefaultBHttpClientConnection(int paramInt, CharsetDecoder paramCharsetDecoder, CharsetEncoder paramCharsetEncoder, MessageConstraints paramMessageConstraints)
  {
    this(paramInt, paramInt, paramCharsetDecoder, paramCharsetEncoder, paramMessageConstraints, null, null, null, null);
  }
  
  public void bind(Socket paramSocket)
  {
    super.bind(paramSocket);
  }
  
  public void flush()
  {
    ensureOpen();
    doFlush();
  }
  
  public boolean isResponseAvailable(int paramInt)
  {
    ensureOpen();
    try
    {
      boolean bool = awaitInput(paramInt);
      return bool;
    }
    catch (SocketTimeoutException localSocketTimeoutException) {}
    return false;
  }
  
  protected void onRequestSubmitted(HttpRequest paramHttpRequest) {}
  
  protected void onResponseReceived(HttpResponse paramHttpResponse) {}
  
  public void receiveResponseEntity(HttpResponse paramHttpResponse)
  {
    Args.notNull(paramHttpResponse, "HTTP response");
    ensureOpen();
    paramHttpResponse.setEntity(prepareInput(paramHttpResponse));
  }
  
  public HttpResponse receiveResponseHeader()
  {
    ensureOpen();
    HttpResponse localHttpResponse = (HttpResponse)responseParser.parse();
    onResponseReceived(localHttpResponse);
    if (localHttpResponse.getStatusLine().getStatusCode() >= 200) {
      incrementResponseCount();
    }
    return localHttpResponse;
  }
  
  public void sendRequestEntity(HttpEntityEnclosingRequest paramHttpEntityEnclosingRequest)
  {
    Args.notNull(paramHttpEntityEnclosingRequest, "HTTP request");
    ensureOpen();
    HttpEntity localHttpEntity = paramHttpEntityEnclosingRequest.getEntity();
    if (localHttpEntity == null) {
      return;
    }
    paramHttpEntityEnclosingRequest = prepareOutput(paramHttpEntityEnclosingRequest);
    localHttpEntity.writeTo(paramHttpEntityEnclosingRequest);
    paramHttpEntityEnclosingRequest.close();
  }
  
  public void sendRequestHeader(HttpRequest paramHttpRequest)
  {
    Args.notNull(paramHttpRequest, "HTTP request");
    ensureOpen();
    requestWriter.write(paramHttpRequest);
    onRequestSubmitted(paramHttpRequest);
    incrementRequestCount();
  }
}

/* Location:
 * Qualified Name:     org.apache.http.impl.DefaultBHttpClientConnection
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */