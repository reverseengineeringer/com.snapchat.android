.class public final Lfv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/io/InputStream;

.field private b:Ljava/lang/Integer;

.field private c:Ljava/lang/Integer;

.field private d:Landroid/graphics/ColorFilter;

.field private e:Landroid/graphics/ColorFilter;

.field private f:Z

.field private g:Z

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v0, p0, Lfv;->b:Ljava/lang/Integer;

    .line 27
    iput-object v0, p0, Lfv;->c:Ljava/lang/Integer;

    .line 28
    iput-object v0, p0, Lfv;->d:Landroid/graphics/ColorFilter;

    iput-object v0, p0, Lfv;->e:Landroid/graphics/ColorFilter;

    .line 29
    iput-boolean v1, p0, Lfv;->f:Z

    .line 30
    iput-boolean v1, p0, Lfv;->g:Z

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfv;->h:Z

    return-void
.end method


# virtual methods
.method public final a()Lfu;
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 154
    iget-object v0, p0, Lfv;->a:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 155
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SVG input not specified. Call one of the readFrom...() methods first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_0
    :try_start_0
    new-instance v0, Lfy$e;

    invoke-direct {v0}, Lfy$e;-><init>()V

    .line 160
    iget-object v1, p0, Lfv;->b:Ljava/lang/Integer;

    iget-object v2, p0, Lfv;->c:Ljava/lang/Integer;

    iget-boolean v3, p0, Lfv;->g:Z

    iput-object v1, v0, Lfy$e;->u:Ljava/lang/Integer;

    iput-object v2, v0, Lfy$e;->v:Ljava/lang/Integer;

    if-eqz v2, :cond_6

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    shr-int/lit8 v1, v1, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lfy$e;->w:Ljava/lang/Float;

    .line 161
    :goto_0
    iget-boolean v1, p0, Lfv;->f:Z

    iput-boolean v1, v0, Lfy$e;->x:Z

    .line 162
    iget-object v1, p0, Lfv;->d:Landroid/graphics/ColorFilter;

    if-eqz v1, :cond_1

    .line 163
    iget-object v1, v0, Lfy$e;->c:Landroid/graphics/Paint;

    iget-object v2, p0, Lfv;->d:Landroid/graphics/ColorFilter;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 165
    :cond_1
    iget-object v1, p0, Lfv;->e:Landroid/graphics/ColorFilter;

    if-eqz v1, :cond_2

    .line 166
    iget-object v1, v0, Lfy$e;->g:Landroid/graphics/Paint;

    iget-object v2, p0, Lfv;->e:Landroid/graphics/ColorFilter;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 170
    :cond_2
    iget-object v1, p0, Lfv;->a:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->markSupported()Z

    move-result v1

    if-nez v1, :cond_3

    .line 171
    new-instance v1, Ljava/io/BufferedInputStream;

    iget-object v2, p0, Lfv;->a:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lfv;->a:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    :cond_3
    :try_start_1
    iget-object v1, p0, Lfv;->a:Ljava/io/InputStream;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/io/InputStream;->mark(I)V

    .line 174
    const/4 v1, 0x2

    new-array v1, v1, [B

    .line 175
    iget-object v2, p0, Lfv;->a:Ljava/io/InputStream;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-virtual {v2, v1, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 176
    const/4 v3, 0x0

    aget-byte v3, v1, v3

    const/4 v4, 0x1

    aget-byte v1, v1, v4

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v1, v3

    const v3, 0xffff

    and-int/2addr v1, v3

    .line 177
    iget-object v3, p0, Lfv;->a:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->reset()V

    .line 178
    if-ne v2, v5, :cond_4

    const v2, 0x8b1f

    if-ne v1, v2, :cond_4

    .line 180
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    iget-object v2, p0, Lfv;->a:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 181
    iput-object v1, p0, Lfv;->a:Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 187
    :cond_4
    :try_start_2
    new-instance v1, Lorg/xml/sax/InputSource;

    iget-object v2, p0, Lfv;->a:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-static {v1, v0}, Lfy;->a(Lorg/xml/sax/InputSource;Lfy$e;)Lfu;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 191
    iget-boolean v1, p0, Lfv;->h:Z

    if-eqz v1, :cond_5

    .line 193
    :try_start_3
    iget-object v1, p0, Lfv;->a:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 195
    :cond_5
    :goto_1
    return-object v0

    .line 160
    :cond_6
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, v0, Lfy$e;->w:Ljava/lang/Float;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 191
    :catchall_0
    move-exception v0

    iget-boolean v1, p0, Lfv;->h:Z

    if-eqz v1, :cond_7

    .line 193
    :try_start_5
    iget-object v1, p0, Lfv;->a:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 195
    :cond_7
    :goto_2
    throw v0

    .line 183
    :catch_0
    move-exception v0

    .line 184
    :try_start_6
    new-instance v1, Lfx;

    invoke-direct {v1, v0}, Lfx;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method
