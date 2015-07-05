.class Lcom/brightcove/player/analytics/Analytics$4;
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
    .line 268
    iput-object p1, p0, Lcom/brightcove/player/analytics/Analytics$4;->this$0:Lcom/brightcove/player/analytics/Analytics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/brightcove/player/event/Event;)V
    .locals 4
    .annotation runtime Lcom/brightcove/player/event/Default;
    .end annotation

    .prologue
    .line 272
    const-string v0, "seekPosition"

    invoke-virtual {p1, v0}, Lcom/brightcove/player/event/Event;->getIntegerProperty(Ljava/lang/String;)I

    move-result v0

    .line 274
    if-lez v0, :cond_0

    .line 278
    iget-object v1, p0, Lcom/brightcove/player/analytics/Analytics$4;->this$0:Lcom/brightcove/player/analytics/Analytics;

    # getter for: Lcom/brightcove/player/analytics/Analytics;->endTime:I
    invoke-static {v1}, Lcom/brightcove/player/analytics/Analytics;->access$200(Lcom/brightcove/player/analytics/Analytics;)I

    move-result v1

    sub-int v1, v0, v1

    .line 279
    const/16 v2, 0x3e8

    if-gt v1, v2, :cond_1

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    iget-object v1, p0, Lcom/brightcove/player/analytics/Analytics$4;->this$0:Lcom/brightcove/player/analytics/Analytics;

    iget-object v2, p0, Lcom/brightcove/player/analytics/Analytics$4;->this$0:Lcom/brightcove/player/analytics/Analytics;

    # getter for: Lcom/brightcove/player/analytics/Analytics;->startTime:I
    invoke-static {v2}, Lcom/brightcove/player/analytics/Analytics;->access$300(Lcom/brightcove/player/analytics/Analytics;)I

    move-result v2

    iget-object v3, p0, Lcom/brightcove/player/analytics/Analytics$4;->this$0:Lcom/brightcove/player/analytics/Analytics;

    # getter for: Lcom/brightcove/player/analytics/Analytics;->endTime:I
    invoke-static {v3}, Lcom/brightcove/player/analytics/Analytics;->access$200(Lcom/brightcove/player/analytics/Analytics;)I

    move-result v3

    # invokes: Lcom/brightcove/player/analytics/Analytics;->sendVideoEngagementRequest(Lcom/brightcove/player/event/Event;II)V
    invoke-static {v1, p1, v2, v3}, Lcom/brightcove/player/analytics/Analytics;->access$400(Lcom/brightcove/player/analytics/Analytics;Lcom/brightcove/player/event/Event;II)V

    .line 284
    iget-object v1, p0, Lcom/brightcove/player/analytics/Analytics$4;->this$0:Lcom/brightcove/player/analytics/Analytics;

    iget-object v2, p0, Lcom/brightcove/player/analytics/Analytics$4;->this$0:Lcom/brightcove/player/analytics/Analytics;

    # setter for: Lcom/brightcove/player/analytics/Analytics;->endTime:I
    invoke-static {v2, v0}, Lcom/brightcove/player/analytics/Analytics;->access$202(Lcom/brightcove/player/analytics/Analytics;I)I

    move-result v0

    # setter for: Lcom/brightcove/player/analytics/Analytics;->startTime:I
    invoke-static {v1, v0}, Lcom/brightcove/player/analytics/Analytics;->access$302(Lcom/brightcove/player/analytics/Analytics;I)I

    goto :goto_0
.end method
