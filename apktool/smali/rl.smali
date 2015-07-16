.class public abstract Lrl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrl$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lrl;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Blocker"


# instance fields
.field public mListener:Lrl$a;
    .annotation build Lchd;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 49
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 50
    iget-object v0, p0, Lrl;->mListener:Lrl$a;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lrl;->mListener:Lrl$a;

    invoke-interface {v0, p0}, Lrl$a;->a(Lrl;)V

    .line 53
    :cond_0
    return-void
.end method

.method public abstract a(Lcom/snapchat/android/model/CashTransaction;)V
.end method

.method public a(Ljava/util/List;Z)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lchd;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lrl;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 37
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 39
    iget-object v0, p0, Lrl;->mListener:Lrl$a;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lrl;->mListener:Lrl$a;

    invoke-interface {v0, p0, p1, p2}, Lrl$a;->a(Lrl;Ljava/util/List;Z)V

    .line 42
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 70
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 71
    iget-object v0, p0, Lrl;->mListener:Lrl$a;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lrl;->mListener:Lrl$a;

    invoke-interface {v0, p0}, Lrl$a;->b(Lrl;)V

    .line 74
    :cond_0
    return-void
.end method

.method public b(Ljava/util/List;Z)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lchd;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lrl;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 59
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 61
    iget-object v0, p0, Lrl;->mListener:Lrl$a;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lrl;->mListener:Lrl$a;

    invoke-interface {v0, p0, p1, p2}, Lrl$a;->b(Lrl;Ljava/util/List;Z)V

    .line 64
    :cond_0
    return-void
.end method

.method public abstract c()Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 11
    check-cast p1, Lrl;

    invoke-virtual {p1}, Lrl;->c()Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;->ordinal()I

    move-result v0

    invoke-virtual {p0}, Lrl;->c()Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;->ordinal()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 95
    if-eq p0, p1, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
