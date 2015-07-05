.class Lcom/brightcove/player/analytics/Analytics$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/brightcove/player/event/EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brightcove/player/analytics/Analytics;->initializeEvents(Lcom/brightcove/player/event/EventEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brightcove/player/analytics/Analytics;


# direct methods
.method constructor <init>(Lcom/brightcove/player/analytics/Analytics;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/brightcove/player/analytics/Analytics$2;->this$0:Lcom/brightcove/player/analytics/Analytics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/brightcove/player/event/Event;)V
    .locals 2
    .annotation runtime Lcom/brightcove/player/event/Default;
    .end annotation

    .prologue
    .line 239
    iget-object v0, p1, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    const-string v1, "baseParams"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 241
    if-eqz v0, :cond_0

    .line 242
    iget-object v1, p0, Lcom/brightcove/player/analytics/Analytics$2;->this$0:Lcom/brightcove/player/analytics/Analytics;

    # getter for: Lcom/brightcove/player/analytics/Analytics;->baseParams:Ljava/util/Map;
    invoke-static {v1}, Lcom/brightcove/player/analytics/Analytics;->access$000(Lcom/brightcove/player/analytics/Analytics;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 243
    iget-object v1, p0, Lcom/brightcove/player/analytics/Analytics$2;->this$0:Lcom/brightcove/player/analytics/Analytics;

    # getter for: Lcom/brightcove/player/analytics/Analytics;->baseParams:Ljava/util/Map;
    invoke-static {v1}, Lcom/brightcove/player/analytics/Analytics;->access$000(Lcom/brightcove/player/analytics/Analytics;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/brightcove/player/analytics/Analytics$2;->this$0:Lcom/brightcove/player/analytics/Analytics;

    # invokes: Lcom/brightcove/player/analytics/Analytics;->emitDidSetEvent()V
    invoke-static {v0}, Lcom/brightcove/player/analytics/Analytics;->access$100(Lcom/brightcove/player/analytics/Analytics;)V

    .line 247
    return-void
.end method
