package org.apache.http.pool;

public abstract interface ConnFactory<T, C>
{
  public abstract C create(T paramT);
}

/* Location:
 * Qualified Name:     org.apache.http.pool.ConnFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */