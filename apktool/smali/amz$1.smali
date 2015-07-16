.class final Lamz$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lus;

.field final synthetic b:Lbhx;

.field final synthetic c:Lamz;


# direct methods
.method constructor <init>(Lamz;Lus;Lbhx;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lamz$1;->c:Lamz;

    iput-object p2, p0, Lamz$1;->a:Lus;

    iput-object p3, p0, Lamz$1;->b:Lbhx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 151
    iget-object v0, p0, Lamz$1;->a:Lus;

    invoke-virtual {v0}, Lus;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lamz$1;->b:Lbhx;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lamz$1;->c:Lamz;

    iget-object v1, p0, Lamz$1;->b:Lbhx;

    invoke-virtual {v0, v1}, Lamz;->a(Lbhx;)V

    .line 156
    :goto_0
    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lamz$1;->c:Lamz;

    iget-object v1, p0, Lamz$1;->a:Lus;

    invoke-static {}, Lbhp;->b()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onFailure - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, Lus;->mResponseCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lus;->mResponseMessage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v2

    new-instance v3, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent;

    iget-object v4, v0, Lamz;->g:Ljava/util/UUID;

    iget v1, v1, Lus;->mResponseCode:I

    invoke-direct {v3, v4, v1}, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent;-><init>(Ljava/util/UUID;I)V

    invoke-virtual {v2, v3}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    new-instance v2, Lbfn;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lbfn;-><init>(Z)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    new-instance v2, Lbfg;

    iget-object v0, v0, Lamz;->g:Ljava/util/UUID;

    invoke-direct {v2, v0}, Lbfg;-><init>(Ljava/util/UUID;)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method
