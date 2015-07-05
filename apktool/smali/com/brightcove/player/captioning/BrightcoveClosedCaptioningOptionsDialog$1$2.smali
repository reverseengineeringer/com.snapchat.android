.class Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1$2;
.super Ljava/util/EnumMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;->selectCurrentEdgeType(Landroid/widget/RadioGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/EnumMap",
        "<",
        "Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;


# direct methods
.method constructor <init>(Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;Ljava/lang/Class;)V
    .locals 2

    .prologue
    .line 319
    iput-object p1, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1$2;->this$1:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;

    invoke-direct {p0, p2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 320
    sget-object v0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;->NONE:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;

    sget v1, Lcom/brightcove/player/R$id;->closed_captioning_options_edge_selection_no_edge_attribute:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1$2;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    sget-object v0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;->UNIFORM:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;

    sget v1, Lcom/brightcove/player/R$id;->closed_captioning_options_edge_selection_uniform_edges:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1$2;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    sget-object v0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;->DEPRESSED:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;

    sget v1, Lcom/brightcove/player/R$id;->closed_captioning_options_edge_selection_depressed_edges:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1$2;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    sget-object v0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;->RAISED:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;

    sget v1, Lcom/brightcove/player/R$id;->closed_captioning_options_edge_selection_raised_edges:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1$2;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    sget-object v0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;->DROP_SHADOW:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;

    sget v1, Lcom/brightcove/player/R$id;->closed_captioning_options_edge_selection_drop_shadow_edges:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1$2;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    return-void
.end method
