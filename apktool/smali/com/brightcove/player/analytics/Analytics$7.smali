.class Lcom/brightcove/player/analytics/Analytics$7;
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
    .line 335
    iput-object p1, p0, Lcom/brightcove/player/analytics/Analytics$7;->this$0:Lcom/brightcove/player/analytics/Analytics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/brightcove/player/event/Event;)V
    .locals 2
    .annotation runtime Lcom/brightcove/player/event/Default;
    .end annotation

    .prologue
    .line 339
    iget-object v0, p1, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    const-string v1, "duration"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 340
    if-lez v0, :cond_0

    .line 341
    iget-object v1, p0, Lcom/brightcove/player/analytics/Analytics$7;->this$0:Lcom/brightcove/player/analytics/Analytics;

    # setter for: Lcom/brightcove/player/analytics/Analytics;->duration:I
    invoke-static {v1, v0}, Lcom/brightcove/player/analytics/Analytics;->access$602(Lcom/brightcove/player/analytics/Analytics;I)I

    .line 343
    :cond_0
    return-void
.end method
