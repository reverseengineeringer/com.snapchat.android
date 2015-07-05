.class final Lahr$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lahr;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lahr;


# direct methods
.method constructor <init>(Lahr;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lahr$1;->a:Lahr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 86
    iget-object v1, p0, Lahr$1;->a:Lahr;

    invoke-static {}, Lbgp;->b()V

    const-string v0, "LocationProvider"

    const-string v2, "Start tracking!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->h(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v1, Lahr;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lahp;

    invoke-virtual {v0}, Lahp;->b()V

    goto :goto_0

    :cond_0
    iget-object v0, v1, Lahr;->b:Laho;

    invoke-static {}, Lbgp;->b()V

    iget-wide v2, v0, Laho;->d:J

    sget-wide v4, Laho;->a:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Laho;->d:J

    .line 87
    :cond_1
    return-void
.end method
