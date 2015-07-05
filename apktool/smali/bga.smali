.class public final Lbga;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mRandomIntegerSetGenerator:Lbfz;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lbfz;

    invoke-direct {v0}, Lbfz;-><init>()V

    invoke-direct {p0, v0}, Lbga;-><init>(Lbfz;)V

    .line 19
    return-void
.end method

.method private constructor <init>(Lbfz;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lbga;->mRandomIntegerSetGenerator:Lbfz;

    .line 24
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x3

    .line 34
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v6, v0, :cond_0

    .line 47
    :goto_0
    return-object p1

    .line 38
    :cond_0
    iget-object v2, p0, Lbga;->mRandomIntegerSetGenerator:Lbfz;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-le v6, v3, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must generate <= upperBound numbers!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v6}, Ljava/util/HashSet;-><init>(I)V

    add-int/lit8 v0, v3, -0x3

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_4

    if-nez v1, :cond_2

    const/4 v0, 0x0

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    iget-object v0, v2, Lbfz;->mRgen:Ljava/security/SecureRandom;

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v0, v5}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v0

    goto :goto_2

    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 40
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 41
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 42
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 43
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    move-object p1, v1

    .line 47
    goto :goto_0
.end method
