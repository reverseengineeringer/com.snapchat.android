package org.apache.http;

import java.util.Iterator;

public abstract interface TokenIterator
  extends Iterator<Object>
{
  public abstract boolean hasNext();
  
  public abstract String nextToken();
}

/* Location:
 * Qualified Name:     org.apache.http.TokenIterator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */