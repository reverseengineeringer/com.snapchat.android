.class public Lorg/apache/commons/lang3/builder/DiffResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lorg/apache/commons/lang3/builder/Diff",
        "<*>;>;"
    }
.end annotation


# static fields
.field private static final DIFFERS_STRING:Ljava/lang/String; = "differs from"

.field public static final OBJECTS_SAME_STRING:Ljava/lang/String; = ""


# instance fields
.field private final diffs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/lang3/builder/Diff",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final lhs:Ljava/lang/Object;

.field private final rhs:Ljava/lang/Object;

.field private final style:Lorg/apache/commons/lang3/builder/ToStringStyle;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/List;Lorg/apache/commons/lang3/builder/ToStringStyle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/lang3/builder/Diff",
            "<*>;>;",
            "Lorg/apache/commons/lang3/builder/ToStringStyle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    if-nez p1, :cond_0

    .line 76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Left hand object cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_0
    if-nez p2, :cond_1

    .line 80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Right hand object cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_1
    if-nez p3, :cond_2

    .line 84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "List of differences cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_2
    iput-object p3, p0, Lorg/apache/commons/lang3/builder/DiffResult;->diffs:Ljava/util/List;

    .line 89
    iput-object p1, p0, Lorg/apache/commons/lang3/builder/DiffResult;->lhs:Ljava/lang/Object;

    .line 90
    iput-object p2, p0, Lorg/apache/commons/lang3/builder/DiffResult;->rhs:Ljava/lang/Object;

    .line 92
    if-nez p4, :cond_3

    .line 93
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->DEFAULT_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iput-object v0, p0, Lorg/apache/commons/lang3/builder/DiffResult;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_3
    iput-object p4, p0, Lorg/apache/commons/lang3/builder/DiffResult;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    goto :goto_0
.end method


# virtual methods
.method public getDiffs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/lang3/builder/Diff",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/DiffResult;->diffs:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNumberOfDiffs()I
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/DiffResult;->diffs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getToStringStyle()Lorg/apache/commons/lang3/builder/ToStringStyle;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/DiffResult;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/apache/commons/lang3/builder/Diff",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/DiffResult;->diffs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/DiffResult;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/DiffResult;->toString(Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 181
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/DiffResult;->diffs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 182
    const-string v0, ""

    .line 193
    :goto_0
    return-object v0

    .line 185
    :cond_0
    new-instance v1, Lorg/apache/commons/lang3/builder/ToStringBuilder;

    iget-object v0, p0, Lorg/apache/commons/lang3/builder/DiffResult;->lhs:Ljava/lang/Object;

    invoke-direct {v1, v0, p1}, Lorg/apache/commons/lang3/builder/ToStringBuilder;-><init>(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)V

    .line 186
    new-instance v2, Lorg/apache/commons/lang3/builder/ToStringBuilder;

    iget-object v0, p0, Lorg/apache/commons/lang3/builder/DiffResult;->rhs:Ljava/lang/Object;

    invoke-direct {v2, v0, p1}, Lorg/apache/commons/lang3/builder/ToStringBuilder;-><init>(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)V

    .line 188
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/DiffResult;->diffs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang3/builder/Diff;

    .line 189
    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/Diff;->getFieldName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/Diff;->getLeft()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->append(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/ToStringBuilder;

    .line 190
    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/Diff;->getFieldName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/Diff;->getRight()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->append(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/ToStringBuilder;

    goto :goto_1

    .line 193
    :cond_1
    const-string v0, "%s %s %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->build()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    const/4 v1, 0x1

    const-string v4, "differs from"

    aput-object v4, v3, v1

    const/4 v1, 0x2

    invoke-virtual {v2}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->build()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
