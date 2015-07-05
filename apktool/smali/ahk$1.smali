.class final Lahk$1;
.super Lahh$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lahk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lahh$c",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lahk;


# direct methods
.method constructor <init>(Lahk;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lahk$1;->a:Lahk;

    invoke-direct {p0, p2}, Lahh$c;-><init>(Ljava/lang/String;)V

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

    invoke-static {p1, v0, v1}, Lahk;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lahk$1;->a:Lahk;

    invoke-static {v3}, Lahk;->a(Lahk;)Lcom/addlive/service/AddLiveService;

    move-result-object v3

    const-string v4, "flushEvents"

    invoke-static {v4}, Lahh;->a(Ljava/lang/String;)Lahh$c;

    move-result-object v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v4, v2, v0}, Lcom/addlive/service/AddLiveService;->flushEvents(Lcom/addlive/service/Responder;Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v0, p0, Lahk$1;->a:Lahk;

    invoke-virtual {v0}, Lahk;->a()V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "livechat"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to flush performance stats due to security exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
