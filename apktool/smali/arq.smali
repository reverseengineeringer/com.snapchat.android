.class public final Larq;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Larq$a;
    }
.end annotation


# static fields
.field private static final c:[Ljava/lang/String;

.field private static final d:[Ljava/lang/String;


# instance fields
.field public a:[Larq$a;

.field public b:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "datetaken"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v4

    sput-object v0, Larq;->c:[Ljava/lang/String;

    .line 30
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "image_id"

    aput-object v1, v0, v2

    const-string v1, "_data"

    aput-object v1, v0, v3

    sput-object v0, Larq;->d:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0
    .param p1    # Landroid/content/ContentResolver;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-direct {p0, p1}, Larq;->a(Landroid/content/ContentResolver;)V

    .line 44
    invoke-direct {p0, p1}, Larq;->b(Landroid/content/ContentResolver;)V

    .line 45
    return-void
.end method

.method private a(Landroid/content/ContentResolver;)V
    .locals 10
    .param p1    # Landroid/content/ContentResolver;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 81
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Larq;->c:[Ljava/lang/String;

    const-string v5, "datetaken DESC"

    move-object v0, p1

    move-object v4, v3

    invoke-static/range {v0 .. v5}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 85
    if-nez v1, :cond_0

    .line 103
    :goto_0
    return-void

    .line 89
    :cond_0
    const-string v0, "_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 90
    const-string v0, "_data"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 92
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v0, v0, [Larq$a;

    iput-object v0, p0, Larq;->a:[Larq$a;

    .line 93
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Larq;->b:[Z

    move v0, v6

    .line 94
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 95
    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 96
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 97
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 98
    iget-object v8, p0, Larq;->a:[Larq$a;

    new-instance v9, Larq$a;

    invoke-direct {v9, p0, v4, v5, v7}, Larq$a;-><init>(Larq;JLjava/lang/String;)V

    aput-object v9, v8, v0

    .line 99
    iget-object v4, p0, Larq;->b:[Z

    aput-boolean v6, v4, v0

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 102
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private b(Landroid/content/ContentResolver;)V
    .locals 9
    .param p1    # Landroid/content/ContentResolver;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 107
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 108
    iget-object v3, p0, Larq;->a:[Larq$a;

    array-length v4, v3

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    .line 109
    iget-wide v6, v5, Larq$a;->a:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 112
    :cond_0
    sget-object v1, Landroid/provider/MediaStore$Images$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    sget-object v4, Larq;->d:[Ljava/lang/String;

    invoke-static {p1, v1, v3, v4}, Landroid/provider/MediaStore$Images$Thumbnails;->queryMiniThumbnails(Landroid/content/ContentResolver;Landroid/net/Uri;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 116
    if-nez v3, :cond_1

    .line 135
    :goto_1
    return-void

    .line 120
    :cond_1
    const-string v1, "image_id"

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 121
    const-string v1, "_data"

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move v1, v0

    .line 123
    :goto_2
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 124
    invoke-interface {v3, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 125
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 126
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 128
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Larq$a;

    .line 129
    if-eqz v0, :cond_2

    .line 130
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v6, v0, Larq$a;->c:Ljava/io/File;

    .line 123
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 134
    :cond_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method


# virtual methods
.method public final a(I)Larq$a;
    .locals 1

    .prologue
    .line 67
    if-ltz p1, :cond_0

    iget-object v0, p0, Larq;->a:[Larq$a;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lco;->a(Z)V

    .line 68
    iget-object v0, p0, Larq;->a:[Larq$a;

    aget-object v0, v0, p1

    return-object v0

    .line 67
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final declared-synchronized b(I)V
    .locals 2

    .prologue
    .line 77
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Larq;->b:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    monitor-exit p0

    return-void

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
