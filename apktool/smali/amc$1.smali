.class final Lamc$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Luc;

.field final synthetic b:Lbgx;

.field final synthetic c:Lamc;


# direct methods
.method constructor <init>(Lamc;Luc;Lbgx;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lamc$1;->c:Lamc;

    iput-object p2, p0, Lamc$1;->a:Luc;

    iput-object p3, p0, Lamc$1;->b:Lbgx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 148
    iget-object v0, p0, Lamc$1;->a:Luc;

    invoke-virtual {v0}, Luc;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lamc$1;->b:Lbgx;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lamc$1;->c:Lamc;

    iget-object v1, p0, Lamc$1;->b:Lbgx;

    invoke-virtual {v0, v1}, Lamc;->a(Lbgx;)V

    .line 153
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lamc$1;->c:Lamc;

    iget-object v1, p0, Lamc$1;->a:Luc;

    invoke-static {}, Lbgp;->b()V

    const-string v2, "AllUpdatesOperation"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onFailure - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v1, Luc;->mResponseCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Luc;->mResponseMessage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v2

    new-instance v3, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent;

    iget-object v4, v0, Lamc;->g:Ljava/util/UUID;

    iget v1, v1, Luc;->mResponseCode:I

    invoke-direct {v3, v4, v1}, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent;-><init>(Ljava/util/UUID;I)V

    invoke-virtual {v2, v3}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    new-instance v2, Lbeo;

    invoke-direct {v2, v5}, Lbeo;-><init>(Z)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    new-instance v2, Lbeh;

    iget-object v0, v0, Lamc;->g:Ljava/util/UUID;

    invoke-direct {v2, v0}, Lbeh;-><init>(Ljava/util/UUID;)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method
