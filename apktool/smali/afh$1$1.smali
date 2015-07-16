.class final Lafh$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lafh$1;->a(Lcom/snapchat/android/discover/ui/ChannelView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lafh$1;


# direct methods
.method constructor <init>(Lafh$1;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lafh$1$1;->a:Lafh$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 120
    iget-object v0, p0, Lafh$1$1;->a:Lafh$1;

    iget-object v0, v0, Lafh$1;->b:Lafh;

    invoke-static {v0}, Lafh;->a(Lafh;)Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbet;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lbet;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 121
    iget-object v0, p0, Lafh$1$1;->a:Lafh$1;

    iget-object v0, v0, Lafh$1;->b:Lafh;

    invoke-static {v0}, Lafh;->a(Lafh;)Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbbq;

    sget-object v2, Lcom/snapchat/android/util/eventbus/CameraDisplayState;->SHOW:Lcom/snapchat/android/util/eventbus/CameraDisplayState;

    invoke-direct {v1, v2}, Lbbq;-><init>(Lcom/snapchat/android/util/eventbus/CameraDisplayState;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 122
    return-void
.end method
