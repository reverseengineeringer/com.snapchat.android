.class Lcom/brightcove/player/view/BrightcovePlayer$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/brightcove/player/event/EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brightcove/player/view/BrightcovePlayer;->onSaveInstanceState(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brightcove/player/view/BrightcovePlayer;

.field final synthetic val$bundle:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/brightcove/player/view/BrightcovePlayer;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lcom/brightcove/player/view/BrightcovePlayer$3;->this$0:Lcom/brightcove/player/view/BrightcovePlayer;

    iput-object p2, p0, Lcom/brightcove/player/view/BrightcovePlayer$3;->val$bundle:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/brightcove/player/event/Event;)V
    .locals 2
    .annotation runtime Lcom/brightcove/player/event/Default;
    .end annotation

    .prologue
    .line 310
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcovePlayer$3;->this$0:Lcom/brightcove/player/view/BrightcovePlayer;

    iget-object v1, p0, Lcom/brightcove/player/view/BrightcovePlayer$3;->val$bundle:Landroid/os/Bundle;

    # invokes: Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V
    invoke-static {v0, v1}, Lcom/brightcove/player/view/BrightcovePlayer;->access$301(Lcom/brightcove/player/view/BrightcovePlayer;Landroid/os/Bundle;)V

    .line 311
    return-void
.end method
