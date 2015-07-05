package org.apache.commons.io.input;

import java.io.InputStream;

public class AutoCloseInputStream
  extends ProxyInputStream
{
  public AutoCloseInputStream(InputStream paramInputStream)
  {
    super(paramInputStream);
  }
  
  protected void afterRead(int paramInt)
  {
    if (paramInt == -1) {
      close();
    }
  }
  
  public void close()
  {
    in.close();
    in = new ClosedInputStream();
  }
  
  protected void finalize()
  {
    close();
    super.finalize();
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.io.input.AutoCloseInputStream
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */