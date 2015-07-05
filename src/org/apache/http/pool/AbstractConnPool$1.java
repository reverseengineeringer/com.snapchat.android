package org.apache.http.pool;

class AbstractConnPool$1
  extends RouteSpecificPool<T, C, E>
{
  AbstractConnPool$1(AbstractConnPool paramAbstractConnPool, Object paramObject1, Object paramObject2)
  {
    super(paramObject1);
  }
  
  protected E createEntry(C paramC)
  {
    return this$0.createEntry(val$route, paramC);
  }
}

/* Location:
 * Qualified Name:     org.apache.http.pool.AbstractConnPool.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */