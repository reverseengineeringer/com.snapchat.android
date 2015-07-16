.class public final Lawe;
.super Ljava/util/PriorityQueue;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/PriorityQueue",
        "<TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/util/PriorityQueue;-><init>()V

    return-void
.end method


# virtual methods
.method public final offer(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 9
    invoke-virtual {p0, p1}, Lawe;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
