import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetAddress;
import java.net.SocketAddress;
import java.nio.channels.SocketChannel;
import java.util.LinkedList;
import java.util.Queue;
import javax.net.ssl.HandshakeCompletedListener;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;

public final class bqa
  extends SSLSocket
  implements bqe
{
  private SSLSocket a;
  private btl b;
  private bsw c;
  private final Queue d = new LinkedList();
  private bud e;
  private bue f;
  
  public bqa(SSLSocket paramSSLSocket, btl parambtl, bsw parambsw)
  {
    if (paramSSLSocket == null) {
      throw new NullPointerException("delegate was null");
    }
    if (parambtl == null) {
      throw new NullPointerException("dispatch was null");
    }
    a = paramSSLSocket;
    b = parambtl;
    c = parambsw;
  }
  
  private bsb a(boolean paramBoolean)
  {
    bsb localbsb = new bsb();
    InetAddress localInetAddress = a.getInetAddress();
    if (localInetAddress != null) {
      localbsb.a(localInetAddress);
    }
    if (paramBoolean) {
      localbsb.a(getPort());
    }
    localbsb.a(btr.a.b);
    if (c != null) {
      j = c.a();
    }
    if (brc.b()) {
      localbsb.a(brc.a());
    }
    return localbsb;
  }
  
  public final bsb a()
  {
    return a(false);
  }
  
  public final void a(bsb parambsb)
  {
    if (parambsb != null) {}
    synchronized (d)
    {
      d.add(parambsb);
      return;
    }
  }
  
  public final void addHandshakeCompletedListener(HandshakeCompletedListener paramHandshakeCompletedListener)
  {
    a.addHandshakeCompletedListener(paramHandshakeCompletedListener);
  }
  
  public final bsb b()
  {
    synchronized (d)
    {
      bsb localbsb = (bsb)d.poll();
      return localbsb;
    }
  }
  
  public final void bind(SocketAddress paramSocketAddress)
  {
    a.bind(paramSocketAddress);
  }
  
  public final void close()
  {
    a.close();
    try
    {
      if (f != null) {
        f.d();
      }
      return;
    }
    catch (ThreadDeath localThreadDeath)
    {
      throw localThreadDeath;
    }
    catch (Throwable localThrowable)
    {
      btd.a(localThrowable);
    }
  }
  
  public final void connect(SocketAddress paramSocketAddress)
  {
    a.connect(paramSocketAddress);
  }
  
  public final void connect(SocketAddress paramSocketAddress, int paramInt)
  {
    a.connect(paramSocketAddress, paramInt);
  }
  
  public final boolean equals(Object paramObject)
  {
    return a.equals(paramObject);
  }
  
  public final SocketChannel getChannel()
  {
    return a.getChannel();
  }
  
  public final boolean getEnableSessionCreation()
  {
    return a.getEnableSessionCreation();
  }
  
  public final String[] getEnabledCipherSuites()
  {
    return a.getEnabledCipherSuites();
  }
  
  public final String[] getEnabledProtocols()
  {
    return a.getEnabledProtocols();
  }
  
  public final InetAddress getInetAddress()
  {
    return a.getInetAddress();
  }
  
  public final InputStream getInputStream()
  {
    InputStream localInputStream = a.getInputStream();
    if (localInputStream != null) {
      try
      {
        if ((f != null) && (f.a(localInputStream))) {
          return f;
        }
        f = new bue(this, localInputStream, b);
        bue localbue = f;
        return localbue;
      }
      catch (ThreadDeath localThreadDeath)
      {
        throw localThreadDeath;
      }
      catch (Throwable localThrowable)
      {
        btd.a(localThrowable);
      }
    }
    return localThreadDeath;
  }
  
  public final boolean getKeepAlive()
  {
    return a.getKeepAlive();
  }
  
  public final InetAddress getLocalAddress()
  {
    return a.getLocalAddress();
  }
  
  public final int getLocalPort()
  {
    return a.getLocalPort();
  }
  
  public final SocketAddress getLocalSocketAddress()
  {
    return a.getLocalSocketAddress();
  }
  
  public final boolean getNeedClientAuth()
  {
    return a.getNeedClientAuth();
  }
  
  public final boolean getOOBInline()
  {
    return a.getOOBInline();
  }
  
  public final OutputStream getOutputStream()
  {
    OutputStream localOutputStream = a.getOutputStream();
    if (localOutputStream != null) {
      try
      {
        if ((e != null) && (e.a(localOutputStream))) {
          return e;
        }
        e = new bud(this, localOutputStream);
        bud localbud = e;
        return localbud;
      }
      catch (ThreadDeath localThreadDeath)
      {
        throw localThreadDeath;
      }
      catch (Throwable localThrowable)
      {
        btd.a(localThrowable);
      }
    }
    return localThreadDeath;
  }
  
  public final int getPort()
  {
    return a.getPort();
  }
  
  public final int getReceiveBufferSize()
  {
    return a.getReceiveBufferSize();
  }
  
  public final SocketAddress getRemoteSocketAddress()
  {
    return a.getRemoteSocketAddress();
  }
  
  public final boolean getReuseAddress()
  {
    return a.getReuseAddress();
  }
  
  public final int getSendBufferSize()
  {
    return a.getSendBufferSize();
  }
  
  public final SSLSession getSession()
  {
    return a.getSession();
  }
  
  public final int getSoLinger()
  {
    return a.getSoLinger();
  }
  
  public final int getSoTimeout()
  {
    return a.getSoTimeout();
  }
  
  public final String[] getSupportedCipherSuites()
  {
    return a.getSupportedCipherSuites();
  }
  
  public final String[] getSupportedProtocols()
  {
    return a.getSupportedProtocols();
  }
  
  public final boolean getTcpNoDelay()
  {
    return a.getTcpNoDelay();
  }
  
  public final int getTrafficClass()
  {
    return a.getTrafficClass();
  }
  
  public final boolean getUseClientMode()
  {
    return a.getUseClientMode();
  }
  
  public final boolean getWantClientAuth()
  {
    return a.getWantClientAuth();
  }
  
  public final int hashCode()
  {
    return a.hashCode();
  }
  
  public final boolean isBound()
  {
    return a.isBound();
  }
  
  public final boolean isClosed()
  {
    return a.isClosed();
  }
  
  public final boolean isConnected()
  {
    return a.isConnected();
  }
  
  public final boolean isInputShutdown()
  {
    return a.isInputShutdown();
  }
  
  public final boolean isOutputShutdown()
  {
    return a.isOutputShutdown();
  }
  
  public final void removeHandshakeCompletedListener(HandshakeCompletedListener paramHandshakeCompletedListener)
  {
    a.removeHandshakeCompletedListener(paramHandshakeCompletedListener);
  }
  
  public final void sendUrgentData(int paramInt)
  {
    a.sendUrgentData(paramInt);
  }
  
  public final void setEnableSessionCreation(boolean paramBoolean)
  {
    a.setEnableSessionCreation(paramBoolean);
  }
  
  public final void setEnabledCipherSuites(String[] paramArrayOfString)
  {
    a.setEnabledCipherSuites(paramArrayOfString);
  }
  
  public final void setEnabledProtocols(String[] paramArrayOfString)
  {
    a.setEnabledProtocols(paramArrayOfString);
  }
  
  public final void setKeepAlive(boolean paramBoolean)
  {
    a.setKeepAlive(paramBoolean);
  }
  
  public final void setNeedClientAuth(boolean paramBoolean)
  {
    a.setNeedClientAuth(paramBoolean);
  }
  
  public final void setOOBInline(boolean paramBoolean)
  {
    a.setOOBInline(paramBoolean);
  }
  
  public final void setPerformancePreferences(int paramInt1, int paramInt2, int paramInt3)
  {
    a.setPerformancePreferences(paramInt1, paramInt2, paramInt3);
  }
  
  public final void setReceiveBufferSize(int paramInt)
  {
    a.setReceiveBufferSize(paramInt);
  }
  
  public final void setReuseAddress(boolean paramBoolean)
  {
    a.setReuseAddress(paramBoolean);
  }
  
  public final void setSendBufferSize(int paramInt)
  {
    a.setSendBufferSize(paramInt);
  }
  
  public final void setSoLinger(boolean paramBoolean, int paramInt)
  {
    a.setSoLinger(paramBoolean, paramInt);
  }
  
  public final void setSoTimeout(int paramInt)
  {
    a.setSoTimeout(paramInt);
  }
  
  public final void setTcpNoDelay(boolean paramBoolean)
  {
    a.setTcpNoDelay(paramBoolean);
  }
  
  public final void setTrafficClass(int paramInt)
  {
    a.setTrafficClass(paramInt);
  }
  
  public final void setUseClientMode(boolean paramBoolean)
  {
    a.setUseClientMode(paramBoolean);
  }
  
  public final void setWantClientAuth(boolean paramBoolean)
  {
    a.setWantClientAuth(paramBoolean);
  }
  
  public final void shutdownInput()
  {
    a.shutdownInput();
  }
  
  public final void shutdownOutput()
  {
    a.shutdownOutput();
  }
  
  public final void startHandshake()
  {
    try
    {
      a.startHandshake();
      return;
    }
    catch (IOException localIOException) {}
    try
    {
      bsb localbsb = a(true);
      localbsb.f();
      g = bsa.a(localIOException);
      b.a(localbsb, bsb.a.j);
      throw localIOException;
    }
    catch (ThreadDeath localThreadDeath)
    {
      throw localThreadDeath;
    }
    catch (Throwable localThrowable)
    {
      for (;;)
      {
        btd.a(localThrowable);
      }
    }
  }
  
  public final String toString()
  {
    return a.toString();
  }
}

/* Location:
 * Qualified Name:     bqa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */