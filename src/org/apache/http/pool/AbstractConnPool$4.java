package org.apache.http.pool;

class AbstractConnPool$4
  implements PoolEntryCallback<T, C>
{
  AbstractConnPool$4(AbstractConnPool paramAbstractConnPool, long paramLong) {}
  
  public void process(PoolEntry<T, C> paramPoolEntry)
  {
    if (paramPoolEntry.isExpired(val$now)) {
      paramPoolEntry.close();
    }
  }
}

/* Location:
 * Qualified Name:     org.apache.http.pool.AbstractConnPool.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */