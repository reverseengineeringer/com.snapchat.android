.class final Lahj$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lahj;->a(Landroid/net/NetworkInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lahj;


# direct methods
.method constructor <init>(Lahj;Z)V
    .locals 0

    .prologue
    .line 993
    iput-object p1, p0, Lahj$6;->b:Lahj;

    iput-boolean p2, p0, Lahj$6;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 996
    iget-object v0, p0, Lahj$6;->b:Lahj;

    iget-boolean v1, p0, Lahj$6;->a:Z

    const-string v2, "livechat"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Got change in reachability connected? ->  "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v2, Lahj$8;->a:[I

    iget-object v3, v0, Lahj;->i:Lahh$b;

    invoke-virtual {v3}, Lahh$b;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 997
    :cond_0
    :goto_0
    return-void

    .line 996
    :pswitch_0
    iget-object v2, v0, Lahj;->o:Landroid/os/Handler;

    iget-object v3, v0, Lahj;->f:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lahj;->e()Lcom/addlive/service/AddLiveService;

    move-result-object v1

    const-string v2, "disconnect"

    invoke-static {v2}, Lahh;->a(Ljava/lang/String;)Lahh$c;

    move-result-object v2

    iget-object v3, v0, Lahj;->h:Lbic;

    invoke-virtual {v3}, Lbic;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/addlive/service/AddLiveService;->disconnect(Lcom/addlive/service/Responder;Ljava/lang/String;)V

    invoke-virtual {v0}, Lahj;->h()V

    sget-object v1, Lahh$b;->b:Lahh$b;

    iput-object v1, v0, Lahj;->i:Lahh$b;

    goto :goto_0

    :pswitch_1
    iget-object v2, v0, Lahj;->o:Landroid/os/Handler;

    iget-object v3, v0, Lahj;->f:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz v1, :cond_0

    iget-object v1, v0, Lahj;->f:Ljava/lang/Runnable;

    if-nez v1, :cond_1

    new-instance v1, Lahj$7;

    invoke-direct {v1, v0}, Lahj$7;-><init>(Lahj;)V

    iput-object v1, v0, Lahj;->f:Ljava/lang/Runnable;

    :cond_1
    iget-object v1, v0, Lahj;->o:Landroid/os/Handler;

    iget-object v2, v0, Lahj;->f:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, v0, Lahj;->o:Landroid/os/Handler;

    iget-object v0, v0, Lahj;->f:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
