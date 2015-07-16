import android.widget.Filter;
import android.widget.Filter.FilterResults;
import com.snapchat.android.model.Friend;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class ahk$b
  extends Filter
{
  private ahk$b(ahk paramahk) {}
  
  protected final Filter.FilterResults performFiltering(CharSequence paramCharSequence)
  {
    Object localObject = paramCharSequence.toString();
    if ((localObject == null) || (((String)localObject).length() == 0)) {
      paramCharSequence = ahk.b(a);
    }
    for (;;)
    {
      localObject = new Filter.FilterResults();
      values = paramCharSequence;
      return (Filter.FilterResults)localObject;
      paramCharSequence = new ArrayList();
      Iterator localIterator = ahk.c(a).iterator();
      while (localIterator.hasNext())
      {
        Friend localFriend = (Friend)localIterator.next();
        if (((!mIsBlocked) && (avg.a(localFriend.l(), (String)localObject))) || (avg.a(localFriend.a(), (String)localObject))) {
          paramCharSequence.add(localFriend);
        }
      }
    }
  }
  
  protected final void publishResults(CharSequence paramCharSequence, Filter.FilterResults paramFilterResults)
  {
    ahk.a(a, (List)values);
    a.notifyDataSetChanged();
  }
}

/* Location:
 * Qualified Name:     ahk.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */