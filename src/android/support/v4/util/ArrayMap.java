package android.support.v4.util;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class ArrayMap<K, V>
  extends SimpleArrayMap<K, V>
  implements Map<K, V>
{
  MapCollections<K, V> mCollections;
  
  public ArrayMap() {}
  
  private ArrayMap(int paramInt)
  {
    super(paramInt);
  }
  
  private ArrayMap(SimpleArrayMap paramSimpleArrayMap)
  {
    super(paramSimpleArrayMap);
  }
  
  private boolean containsAll(Collection<?> paramCollection)
  {
    return MapCollections.containsAllHelper(this, paramCollection);
  }
  
  private MapCollections<K, V> getCollection()
  {
    if (mCollections == null) {
      mCollections = new MapCollections()
      {
        protected final void colClear()
        {
          clear();
        }
        
        protected final Object colGetEntry(int paramAnonymousInt1, int paramAnonymousInt2)
        {
          return mArray[((paramAnonymousInt1 << 1) + paramAnonymousInt2)];
        }
        
        protected final Map<K, V> colGetMap()
        {
          return ArrayMap.this;
        }
        
        protected final int colGetSize()
        {
          return mSize;
        }
        
        protected final int colIndexOfKey(Object paramAnonymousObject)
        {
          return indexOfKey(paramAnonymousObject);
        }
        
        protected final int colIndexOfValue(Object paramAnonymousObject)
        {
          return indexOfValue(paramAnonymousObject);
        }
        
        protected final void colPut(K paramAnonymousK, V paramAnonymousV)
        {
          put(paramAnonymousK, paramAnonymousV);
        }
        
        protected final void colRemoveAt(int paramAnonymousInt)
        {
          removeAt(paramAnonymousInt);
        }
        
        protected final V colSetValue(int paramAnonymousInt, V paramAnonymousV)
        {
          return (V)setValueAt(paramAnonymousInt, paramAnonymousV);
        }
      };
    }
    return mCollections;
  }
  
  private boolean removeAll(Collection<?> paramCollection)
  {
    return MapCollections.removeAllHelper(this, paramCollection);
  }
  
  private boolean retainAll(Collection<?> paramCollection)
  {
    return MapCollections.retainAllHelper(this, paramCollection);
  }
  
  public Set<Map.Entry<K, V>> entrySet()
  {
    MapCollections localMapCollections = getCollection();
    if (mEntrySet == null) {
      mEntrySet = new MapCollections.EntrySet(localMapCollections);
    }
    return mEntrySet;
  }
  
  public Set<K> keySet()
  {
    MapCollections localMapCollections = getCollection();
    if (mKeySet == null) {
      mKeySet = new MapCollections.KeySet(localMapCollections);
    }
    return mKeySet;
  }
  
  public void putAll(Map<? extends K, ? extends V> paramMap)
  {
    ensureCapacity(mSize + paramMap.size());
    paramMap = paramMap.entrySet().iterator();
    while (paramMap.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramMap.next();
      put(localEntry.getKey(), localEntry.getValue());
    }
  }
  
  public Collection<V> values()
  {
    MapCollections localMapCollections = getCollection();
    if (mValues == null) {
      mValues = new MapCollections.ValuesCollection(localMapCollections);
    }
    return mValues;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.util.ArrayMap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */