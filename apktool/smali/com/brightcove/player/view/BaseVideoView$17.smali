.class Lcom/brightcove/player/view/BaseVideoView$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/brightcove/player/event/EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brightcove/player/view/BaseVideoView;->addSubtitleSource(Ljava/io/InputStream;Landroid/media/MediaFormat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brightcove/player/view/BaseVideoView;

.field final synthetic val$pair:Landroid/util/Pair;


# direct methods
.method constructor <init>(Lcom/brightcove/player/view/BaseVideoView;Landroid/util/Pair;)V
    .locals 0

    .prologue
    .line 1169
    iput-object p1, p0, Lcom/brightcove/player/view/BaseVideoView$17;->this$0:Lcom/brightcove/player/view/BaseVideoView;

    iput-object p2, p0, Lcom/brightcove/player/view/BaseVideoView$17;->val$pair:Landroid/util/Pair;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/brightcove/player/event/Event;)V
    .locals 3

    .prologue
    .line 1172
    iget-object v0, p1, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    const-string v1, "nextVideo"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brightcove/player/model/Video;

    .line 1174
    if-eqz v0, :cond_0

    .line 1175
    iget-object v1, p0, Lcom/brightcove/player/view/BaseVideoView$17;->this$0:Lcom/brightcove/player/view/BaseVideoView;

    iget-object v2, p0, Lcom/brightcove/player/view/BaseVideoView$17;->val$pair:Landroid/util/Pair;

    # invokes: Lcom/brightcove/player/view/BaseVideoView;->addSubtitlePair(Lcom/brightcove/player/model/Video;Landroid/util/Pair;)V
    invoke-static {v1, v0, v2}, Lcom/brightcove/player/view/BaseVideoView;->access$1200(Lcom/brightcove/player/view/BaseVideoView;Lcom/brightcove/player/model/Video;Landroid/util/Pair;)V

    .line 1177
    :cond_0
    return-void
.end method
