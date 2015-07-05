.class public Laoc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laoe;


# instance fields
.field private final a:Lahe;

.field private final b:Laoi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laoi",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Laog;


# direct methods
.method public constructor <init>(Lahe;)V
    .locals 3

    .prologue
    .line 26
    new-instance v0, Laoh;

    invoke-direct {v0}, Laoh;-><init>()V

    new-instance v1, Laog;

    invoke-interface {p1}, Lahe;->c()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Laog;-><init>(Ljava/util/List;)V

    invoke-direct {p0, p1, v0, v1}, Laoc;-><init>(Lahe;Laoi;Laog;)V

    .line 27
    return-void
.end method

.method private constructor <init>(Lahe;Laoi;Laog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lahe;",
            "Laoi",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;",
            "Laog;",
            ")V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Laoc;->a:Lahe;

    .line 32
    iput-object p2, p0, Laoc;->b:Laoi;

    .line 33
    iput-object p3, p0, Laoc;->c:Laog;

    .line 34
    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lagk;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 39
    iget-object v0, p0, Laoc;->a:Lahe;

    invoke-interface {v0}, Lahe;->b()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 41
    iget-object v0, p0, Laoc;->c:Laog;

    invoke-virtual {v0}, Laog;->a()Ljava/util/List;

    move-result-object v0

    .line 42
    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 46
    :cond_0
    iget-object v0, p0, Laoc;->c:Laog;

    invoke-virtual {v0}, Laog;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    new-instance v0, Laob;

    invoke-direct {v0}, Laob;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_1
    iget-object v0, p0, Laoc;->a:Lahe;

    invoke-interface {v0}, Lahe;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 51
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 54
    :cond_2
    iget-object v0, p0, Laoc;->a:Lahe;

    invoke-interface {v0}, Lahe;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 55
    iget-object v3, p0, Laoc;->b:Laoi;

    invoke-interface {v3, v0}, Laoi;->a(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 56
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 60
    :cond_4
    return-object v1
.end method

.method public final b()Ljava/util/List;
    .locals 1
    .annotation build Lcgc;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Laoc;->c:Laog;

    invoke-virtual {v0}, Laog;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Laoc;->c:Laog;

    invoke-virtual {v0}, Laog;->c()Z

    move-result v0

    return v0
.end method

.method public final d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Laoc;->a:Lahe;

    invoke-interface {v0}, Lahe;->d()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
