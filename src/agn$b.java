import android.widget.Filter;
import android.widget.Filter.FilterResults;
import com.snapchat.android.model.Friend;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class agn$b
  extends Filter
{
  private agn$b(agn paramagn) {}
  
  protected final Filter.FilterResults performFiltering(CharSequence paramCharSequence)
  {
    Object localObject = paramCharSequence.toString();
    if ((localObject == null) || (((String)localObject).length() == 0)) {
      paramCharSequence = agn.b(a);
    }
    for (;;)
    {
      localObject = new Filter.FilterResults();
      values = paramCharSequence;
      return (Filter.FilterResults)localObject;
      paramCharSequence = new ArrayList();
      Iterator localIterator = agn.c(a).iterator();
      while (localIterator.hasNext())
      {
        Friend localFriend = (Friend)localIterator.next();
        if (((!mIsBlocked) && (aui.a(localFriend.h(), (String)localObject))) || (aui.a(localFriend.a(), (String)localObject))) {
          paramCharSequence.add(localFriend);
        }
      }
    }
  }
  
  protected final void publishResults(CharSequence paramCharSequence, Filter.FilterResults paramFilterResults)
  {
    agn.a(a, (List)values);
    a.notifyDataSetChanged();
  }
}

/* Location:
 * Qualified Name:     agn.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */