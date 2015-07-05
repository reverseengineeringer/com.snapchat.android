package org.apache.http;

import java.util.Iterator;

public abstract interface HeaderIterator
  extends Iterator<Object>
{
  public abstract boolean hasNext();
  
  public abstract Header nextHeader();
}

/* Location:
 * Qualified Name:     org.apache.http.HeaderIterator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */