.class public final Lasv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lasu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lasm;",
        ">",
        "Ljava/lang/Object;",
        "Lasu;"
    }
.end annotation


# instance fields
.field protected a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lasv;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(I)Lasm;
    .locals 3
    .annotation build Lchd;
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lasv;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 33
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lasv;->a:Ljava/util/List;

    iget-object v0, p0, Lasv;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    const/4 v0, 0x0

    :cond_1
    :goto_1
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lasm;

    goto :goto_0

    :cond_2
    rem-int v0, p1, v2

    if-gez v0, :cond_1

    add-int/2addr v0, v2

    goto :goto_1
.end method

.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lasv;->a:Ljava/util/List;

    return-object v0
.end method

.method public final a(Lasm;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lasv;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lasv;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final b(I)Lcom/snapchat/android/ui/swipefilters/FilterPageType;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lasv;->a(I)Lasm;

    move-result-object v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    sget-object v0, Lcom/snapchat/android/ui/swipefilters/FilterPageType;->UNFILTERED:Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    .line 26
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lasm;->b()Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    move-result-object v0

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lasv;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 62
    return-void
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lasv;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lasm;

    .line 66
    invoke-virtual {v0}, Lasm;->e()V

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {p0}, Lasv;->c()V

    .line 69
    return-void
.end method
