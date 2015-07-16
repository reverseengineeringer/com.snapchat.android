.class final Lain$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lain;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lain;


# direct methods
.method constructor <init>(Lain;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lain$1;->a:Lain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 86
    iget-object v1, p0, Lain$1;->a:Lain;

    invoke-static {}, Lbhp;->b()V

    iget-object v0, v1, Lain;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lail;

    invoke-virtual {v0}, Lail;->b()V

    goto :goto_0

    :cond_0
    iget-object v0, v1, Lain;->b:Laik;

    invoke-static {}, Lbhp;->b()V

    iget-wide v2, v0, Laik;->d:J

    sget-wide v4, Laik;->a:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Laik;->d:J

    .line 87
    :cond_1
    return-void
.end method
