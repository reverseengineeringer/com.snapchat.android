.class final Laea$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laea;
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
        "Ladx;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Laea;


# direct methods
.method constructor <init>(Laea;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Laea$2;->a:Laea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    .prologue
    .line 150
    check-cast p1, Ladx;

    check-cast p2, Ladx;

    iget-object v0, p1, Ladx;->b:Ljava/util/LinkedHashSet;

    iget-object v1, p2, Ladx;->b:Ljava/util/LinkedHashSet;

    new-instance v2, Lchh;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Lchh;-><init>(J)V

    invoke-virtual {v2}, Lchh;->F_()Lchh;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lchh;->a(I)Lchh;

    move-result-object v2

    invoke-static {}, Lda;->a()Lda;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v0

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v1

    invoke-virtual {v3, v0, v1}, Lda;->b(ZZ)Lda;

    move-result-object v0

    invoke-virtual {p2, v2}, Ladx;->b(Lchh;)I

    move-result v1

    invoke-virtual {p1, v2}, Ladx;->b(Lchh;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lda;->a(II)Lda;

    move-result-object v0

    invoke-virtual {v0}, Lda;->b()I

    move-result v0

    return v0
.end method
