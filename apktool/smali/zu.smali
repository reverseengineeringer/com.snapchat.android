.class public final Lzu;
.super Landroid/database/CursorWrapper;
.source "SourceFile"


# instance fields
.field private final a:[I

.field private final b:[I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;[I)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 29
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 31
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    array-length v0, p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    iput-object p2, p0, Lzu;->a:[I

    .line 33
    iget-object v0, p0, Lzu;->a:[I

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lzu;->b:[I

    .line 34
    iget-object v0, p0, Lzu;->b:[I

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([II)V

    .line 36
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lzu;->a:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 37
    iget-object v1, p0, Lzu;->a:[I

    aget v1, v1, v0

    .line 38
    iget-object v2, p0, Lzu;->b:[I

    aget v2, v2, v1

    if-eq v2, v3, :cond_0

    .line 39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Found two cursor positions that map to the same sorted position!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    iget-object v2, p0, Lzu;->b:[I

    aput v0, v2, v1

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 44
    :cond_1
    return-void
.end method


# virtual methods
.method public final getPosition()I
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lzu;->a:[I

    invoke-super {p0}, Landroid/database/CursorWrapper;->getPosition()I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public final isFirst()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-super {p0}, Landroid/database/CursorWrapper;->getPosition()I

    move-result v1

    iget-object v2, p0, Lzu;->b:[I

    aget v2, v2, v0

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final isLast()Z
    .locals 3

    .prologue
    .line 53
    invoke-super {p0}, Landroid/database/CursorWrapper;->getPosition()I

    move-result v0

    iget-object v1, p0, Lzu;->b:[I

    iget-object v2, p0, Lzu;->b:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final move(I)Z
    .locals 2

    .prologue
    .line 68
    invoke-virtual {p0}, Lzu;->getPosition()I

    move-result v0

    add-int/2addr v0, p1

    .line 69
    if-ltz v0, :cond_0

    iget-object v1, p0, Lzu;->b:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 71
    :cond_0
    const/4 v0, 0x0

    .line 73
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lzu;->b:[I

    aget v0, v1, v0

    invoke-super {p0, v0}, Landroid/database/CursorWrapper;->moveToPosition(I)Z

    move-result v0

    goto :goto_0
.end method

.method public final moveToFirst()Z
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lzu;->b:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-super {p0, v0}, Landroid/database/CursorWrapper;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public final moveToLast()Z
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lzu;->b:[I

    iget-object v1, p0, Lzu;->b:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    invoke-super {p0, v0}, Landroid/database/CursorWrapper;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public final moveToNext()Z
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lzu;->move(I)Z

    move-result v0

    return v0
.end method

.method public final moveToPosition(I)Z
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lzu;->b:[I

    aget v0, v0, p1

    invoke-super {p0, v0}, Landroid/database/CursorWrapper;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public final moveToPrevious()Z
    .locals 1

    .prologue
    .line 89
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lzu;->move(I)Z

    move-result v0

    return v0
.end method
