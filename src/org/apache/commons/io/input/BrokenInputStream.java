package org.apache.commons.io.input;

import java.io.IOException;
import java.io.InputStream;

public class BrokenInputStream
  extends InputStream
{
  private final IOException exception;
  
  public BrokenInputStream()
  {
    this(new IOException("Broken input stream"));
  }
  
  public BrokenInputStream(IOException paramIOException)
  {
    exception = paramIOException;
  }
  
  public int available()
  {
    throw exception;
  }
  
  public void close()
  {
    throw exception;
  }
  
  public int read()
  {
    throw exception;
  }
  
  public void reset()
  {
    throw exception;
  }
  
  public long skip(long paramLong)
  {
    throw exception;
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.io.input.BrokenInputStream
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */