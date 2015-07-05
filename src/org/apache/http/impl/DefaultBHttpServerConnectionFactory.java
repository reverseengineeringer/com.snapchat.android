package org.apache.http.impl;

import java.net.Socket;
import org.apache.http.HttpConnectionFactory;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.annotation.Immutable;
import org.apache.http.config.ConnectionConfig;
import org.apache.http.entity.ContentLengthStrategy;
import org.apache.http.io.HttpMessageParserFactory;
import org.apache.http.io.HttpMessageWriterFactory;

@Immutable
public class DefaultBHttpServerConnectionFactory
  implements HttpConnectionFactory<DefaultBHttpServerConnection>
{
  public static final DefaultBHttpServerConnectionFactory INSTANCE = new DefaultBHttpServerConnectionFactory();
  private final ConnectionConfig cconfig;
  private final ContentLengthStrategy incomingContentStrategy;
  private final ContentLengthStrategy outgoingContentStrategy;
  private final HttpMessageParserFactory<HttpRequest> requestParserFactory;
  private final HttpMessageWriterFactory<HttpResponse> responseWriterFactory;
  
  public DefaultBHttpServerConnectionFactory()
  {
    this(null, null, null, null, null);
  }
  
  public DefaultBHttpServerConnectionFactory(ConnectionConfig paramConnectionConfig)
  {
    this(paramConnectionConfig, null, null, null, null);
  }
  
  public DefaultBHttpServerConnectionFactory(ConnectionConfig paramConnectionConfig, ContentLengthStrategy paramContentLengthStrategy1, ContentLengthStrategy paramContentLengthStrategy2, HttpMessageParserFactory<HttpRequest> paramHttpMessageParserFactory, HttpMessageWriterFactory<HttpResponse> paramHttpMessageWriterFactory)
  {
    if (paramConnectionConfig != null) {}
    for (;;)
    {
      cconfig = paramConnectionConfig;
      incomingContentStrategy = paramContentLengthStrategy1;
      outgoingContentStrategy = paramContentLengthStrategy2;
      requestParserFactory = paramHttpMessageParserFactory;
      responseWriterFactory = paramHttpMessageWriterFactory;
      return;
      paramConnectionConfig = ConnectionConfig.DEFAULT;
    }
  }
  
  public DefaultBHttpServerConnectionFactory(ConnectionConfig paramConnectionConfig, HttpMessageParserFactory<HttpRequest> paramHttpMessageParserFactory, HttpMessageWriterFactory<HttpResponse> paramHttpMessageWriterFactory)
  {
    this(paramConnectionConfig, null, null, paramHttpMessageParserFactory, paramHttpMessageWriterFactory);
  }
  
  public DefaultBHttpServerConnection createConnection(Socket paramSocket)
  {
    DefaultBHttpServerConnection localDefaultBHttpServerConnection = new DefaultBHttpServerConnection(cconfig.getBufferSize(), cconfig.getFragmentSizeHint(), ConnSupport.createDecoder(cconfig), ConnSupport.createEncoder(cconfig), cconfig.getMessageConstraints(), incomingContentStrategy, outgoingContentStrategy, requestParserFactory, responseWriterFactory);
    localDefaultBHttpServerConnection.bind(paramSocket);
    return localDefaultBHttpServerConnection;
  }
}

/* Location:
 * Qualified Name:     org.apache.http.impl.DefaultBHttpServerConnectionFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */