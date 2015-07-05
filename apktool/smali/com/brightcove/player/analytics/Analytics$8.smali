.class Lcom/brightcove/player/analytics/Analytics$8;
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
    .line 346
    iput-object p1, p0, Lcom/brightcove/player/analytics/Analytics$8;->this$0:Lcom/brightcove/player/analytics/Analytics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/brightcove/player/event/Event;)V
    .locals 3
    .annotation runtime Lcom/brightcove/player/event/Default;
    .end annotation

    .prologue
    .line 350
    iget-object v1, p0, Lcom/brightcove/player/analytics/Analytics$8;->this$0:Lcom/brightcove/player/analytics/Analytics;

    iget-object v0, p1, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    const-string v2, "buildVersion"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    # setter for: Lcom/brightcove/player/analytics/Analytics;->platformVersion:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/brightcove/player/analytics/Analytics;->access$802(Lcom/brightcove/player/analytics/Analytics;Ljava/lang/String;)Ljava/lang/String;

    .line 351
    return-void
.end method
