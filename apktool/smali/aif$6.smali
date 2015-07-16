.class final Laif$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laif;->a(Landroid/net/NetworkInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Laif;


# direct methods
.method constructor <init>(Laif;Z)V
    .locals 0

    .prologue
    .line 1037
    iput-object p1, p0, Laif$6;->b:Laif;

    iput-boolean p2, p0, Laif$6;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 1040
    iget-object v0, p0, Laif$6;->b:Laif;

    iget-boolean v1, p0, Laif$6;->a:Z

    sget-object v2, Laif$8;->a:[I

    iget-object v3, v0, Laif;->i:Lcom/snapchat/android/livechat/AdlHelper$b;

    invoke-virtual {v3}, Lcom/snapchat/android/livechat/AdlHelper$b;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1041
    :cond_0
    :goto_0
    return-void

    .line 1040
    :pswitch_0
    iget-object v2, v0, Laif;->p:Landroid/os/Handler;

    iget-object v3, v0, Laif;->f:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-nez v1, :cond_0

    invoke-virtual {v0}, Laif;->f()Lcom/addlive/service/AddLiveService;

    move-result-object v1

    const-string v2, "disconnect"

    invoke-static {v2}, Lcom/snapchat/android/livechat/AdlHelper;->a(Ljava/lang/String;)Lcom/snapchat/android/livechat/AdlHelper$c;

    move-result-object v2

    iget-object v3, v0, Laif;->h:Lbjc;

    invoke-virtual {v3}, Lbjc;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/addlive/service/AddLiveService;->disconnect(Lcom/addlive/service/Responder;Ljava/lang/String;)V

    invoke-virtual {v0}, Laif;->i()V

    sget-object v1, Lcom/snapchat/android/livechat/AdlHelper$b;->b:Lcom/snapchat/android/livechat/AdlHelper$b;

    iput-object v1, v0, Laif;->i:Lcom/snapchat/android/livechat/AdlHelper$b;

    goto :goto_0

    :pswitch_1
    iget-object v2, v0, Laif;->p:Landroid/os/Handler;

    iget-object v3, v0, Laif;->f:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz v1, :cond_0

    iget-object v1, v0, Laif;->f:Ljava/lang/Runnable;

    if-nez v1, :cond_1

    new-instance v1, Laif$7;

    invoke-direct {v1, v0}, Laif$7;-><init>(Laif;)V

    iput-object v1, v0, Laif;->f:Ljava/lang/Runnable;

    :cond_1
    iget-object v1, v0, Laif;->p:Landroid/os/Handler;

    iget-object v2, v0, Laif;->f:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, v0, Laif;->p:Landroid/os/Handler;

    iget-object v0, v0, Laif;->f:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
