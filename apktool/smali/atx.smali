.class public final Latx;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/util/SortedSet;Ljava/util/SortedSet;Z)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<TT;>;>(",
            "Ljava/util/SortedSet",
            "<TT;>;",
            "Ljava/util/SortedSet",
            "<TT;>;Z)I"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 37
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    :cond_0
    :goto_0
    return v2

    .line 40
    :cond_1
    invoke-interface {p0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 41
    invoke-interface {p1}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 42
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    .line 43
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    move-object v3, v0

    move-object v6, v1

    move v1, v2

    move-object v2, v6

    .line 46
    :goto_1
    invoke-interface {v3, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 48
    if-nez v0, :cond_3

    .line 49
    if-eqz p2, :cond_2

    .line 50
    const/4 v2, 0x1

    goto :goto_0

    .line 52
    :cond_2
    add-int/lit8 v2, v1, 0x1

    .line 53
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    .line 55
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    move-object v3, v0

    move-object v6, v1

    move v1, v2

    move-object v2, v6

    goto :goto_1

    .line 59
    :cond_3
    if-gez v0, :cond_4

    .line 60
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 61
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    move-object v3, v0

    goto :goto_1

    .line 66
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 67
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    move-object v2, v0

    .line 72
    goto :goto_1

    :cond_5
    move v2, v1

    goto :goto_0
.end method
