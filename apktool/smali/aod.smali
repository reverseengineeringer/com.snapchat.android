.class public final Laod;
.super Laoc;
.source "SourceFile"


# instance fields
.field private final a:Lajq;


# direct methods
.method public constructor <init>(Lahe;Lajq;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Laoc;-><init>(Lahe;)V

    .line 18
    iput-object p2, p0, Laod;->a:Lajq;

    .line 19
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 3
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
    .line 23
    invoke-super {p0}, Laoc;->a()Ljava/util/List;

    move-result-object v0

    .line 24
    const/4 v1, 0x0

    iget-object v2, p0, Laod;->a:Lajq;

    invoke-virtual {v2}, Lajq;->d()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 25
    return-object v0
.end method
