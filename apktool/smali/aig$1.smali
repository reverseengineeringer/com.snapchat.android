.class final Laig$1;
.super Lcom/snapchat/android/livechat/AdlHelper$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/livechat/AdlHelper$c",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Laig;


# direct methods
.method constructor <init>(Laig;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Laig$1;->a:Laig;

    invoke-direct {p0, p2}, Lcom/snapchat/android/livechat/AdlHelper$c;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final synthetic resultHandler(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 65
    check-cast p1, Ljava/lang/String;

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x384

    add-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Laig;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Laig$1;->a:Laig;

    invoke-static {v3}, Laig;->a(Laig;)Lcom/addlive/service/AddLiveService;

    move-result-object v3

    const-string v4, "flushEvents"

    invoke-static {v4}, Lcom/snapchat/android/livechat/AdlHelper;->a(Ljava/lang/String;)Lcom/snapchat/android/livechat/AdlHelper$c;

    move-result-object v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v4, v2, v0}, Lcom/addlive/service/AddLiveService;->flushEvents(Lcom/addlive/service/Responder;Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v0, p0, Laig$1;->a:Laig;

    invoke-virtual {v0}, Laig;->a()V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to flush performance stats due to security exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
