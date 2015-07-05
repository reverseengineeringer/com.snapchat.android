.class final Lada$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lada;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lacx;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lada;


# direct methods
.method constructor <init>(Lada;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lada$1;->a:Lada;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 7

    .prologue
    .line 176
    check-cast p1, Lacx;

    check-cast p2, Lacx;

    iget-object v0, p1, Lacx;->b:Ljava/util/LinkedHashSet;

    iget-object v1, p2, Lacx;->b:Ljava/util/LinkedHashSet;

    new-instance v2, Lcgg;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Lcgg;-><init>(J)V

    invoke-virtual {v2}, Lcgg;->F_()Lcgg;

    move-result-object v2

    iget-object v3, v2, Lchg;->b:Lcgf;

    invoke-virtual {v3}, Lcgf;->w()Lcgm;

    move-result-object v3

    iget-wide v4, v2, Lchg;->a:J

    const/4 v6, -0x2

    invoke-virtual {v3, v4, v5, v6}, Lcgm;->a(JI)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcgg;->a_(J)Lcgg;

    move-result-object v2

    invoke-static {}, Lcw;->a()Lcw;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v0

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v1

    invoke-virtual {v3, v0, v1}, Lcw;->b(ZZ)Lcw;

    move-result-object v0

    invoke-virtual {p2, v2}, Lacx;->b(Lcgg;)I

    move-result v1

    invoke-virtual {p1, v2}, Lacx;->b(Lcgg;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcw;->a(II)Lcw;

    move-result-object v0

    invoke-virtual {v0}, Lcw;->b()I

    move-result v0

    return v0
.end method
