package com.brightcove.player.captioning;

import com.brightcove.player.R.id;
import java.util.EnumMap;

class BrightcoveClosedCaptioningOptionsDialog$1$2
  extends EnumMap<BrightcoveClosedCaptioningTextView.EdgeAttribute, Integer>
{
  BrightcoveClosedCaptioningOptionsDialog$1$2(BrightcoveClosedCaptioningOptionsDialog.1 param1, Class paramClass)
  {
    super(paramClass);
    put(BrightcoveClosedCaptioningTextView.EdgeAttribute.NONE, Integer.valueOf(R.id.closed_captioning_options_edge_selection_no_edge_attribute));
    put(BrightcoveClosedCaptioningTextView.EdgeAttribute.UNIFORM, Integer.valueOf(R.id.closed_captioning_options_edge_selection_uniform_edges));
    put(BrightcoveClosedCaptioningTextView.EdgeAttribute.DEPRESSED, Integer.valueOf(R.id.closed_captioning_options_edge_selection_depressed_edges));
    put(BrightcoveClosedCaptioningTextView.EdgeAttribute.RAISED, Integer.valueOf(R.id.closed_captioning_options_edge_selection_raised_edges));
    put(BrightcoveClosedCaptioningTextView.EdgeAttribute.DROP_SHADOW, Integer.valueOf(R.id.closed_captioning_options_edge_selection_drop_shadow_edges));
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.captioning.BrightcoveClosedCaptioningOptionsDialog.1.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */