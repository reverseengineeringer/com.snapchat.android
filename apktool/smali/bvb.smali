.class public final Lbvb;
.super Ljava/io/InputStream;


# instance fields
.field private final a:Ljava/io/InputStream;

.field private final b:Lbum;

.field private final c:Lbtc;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lbum;Lbtc;)V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 21
    if-nez p1, :cond_0

    .line 22
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "delegate was null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_0
    if-nez p2, :cond_1

    .line 26
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dispatch was null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_1
    if-nez p3, :cond_2

    .line 30
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "stats were null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_2
    iput-object p1, p0, Lbvb;->a:Ljava/io/InputStream;

    .line 34
    iput-object p2, p0, Lbvb;->b:Lbum;

    .line 35
    iput-object p3, p0, Lbvb;->c:Lbtc;

    .line 36
    return-void
.end method

.method private a(II)V
    .locals 4

    .prologue
    .line 62
    :try_start_0
    iget-object v0, p0, Lbvb;->c:Lbtc;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lbvb;->b:Lbum;

    iget-object v1, p0, Lbvb;->c:Lbtc;

    invoke-virtual {v0, v1}, Lbum;->a(Lbtc;)V

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    iget-object v0, p0, Lbvb;->c:Lbtc;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Lbtc;->a(J)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    throw v0

    .line 65
    :catch_1
    move-exception v0

    invoke-static {v0}, Lbue;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 82
    :try_start_0
    iget-object v0, p0, Lbvb;->c:Lbtc;

    invoke-static {p1}, Lbtb;->a(Ljava/lang/Throwable;)Lbtb;

    move-result-object v1

    iput-object v1, v0, Lbtc;->g:Lbtb;

    iget-object v0, p0, Lbvb;->b:Lbum;

    iget-object v1, p0, Lbvb;->c:Lbtc;

    invoke-virtual {v0, v1}, Lbum;->a(Lbtc;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 88
    :goto_0
    return-void

    .line 83
    :catch_0
    move-exception v0

    throw v0

    .line 85
    :catch_1
    move-exception v0

    invoke-static {v0}, Lbue;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public final available()I
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lbvb;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public final close()V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lbvb;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 46
    return-void
.end method

.method public final mark(I)V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lbvb;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 52
    return-void
.end method

.method public final markSupported()Z
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lbvb;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public final read()I
    .locals 2

    .prologue
    .line 97
    :try_start_0
    iget-object v0, p0, Lbvb;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 106
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lbvb;->a(II)V

    .line 108
    return v0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    invoke-direct {p0, v0}, Lbvb;->a(Ljava/lang/Exception;)V

    .line 103
    throw v0
.end method

.method public final read([B)I
    .locals 1

    .prologue
    .line 113
    :try_start_0
    iget-object v0, p0, Lbvb;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 122
    invoke-direct {p0, v0, v0}, Lbvb;->a(II)V

    .line 124
    return v0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    invoke-direct {p0, v0}, Lbvb;->a(Ljava/lang/Exception;)V

    .line 119
    throw v0
.end method

.method public final read([BII)I
    .locals 1

    .prologue
    .line 131
    :try_start_0
    iget-object v0, p0, Lbvb;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 140
    invoke-direct {p0, v0, v0}, Lbvb;->a(II)V

    .line 142
    return v0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    invoke-direct {p0, v0}, Lbvb;->a(Ljava/lang/Exception;)V

    .line 137
    throw v0
.end method

.method public final declared-synchronized reset()V
    .locals 1

    .prologue
    .line 148
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbvb;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    monitor-exit p0

    return-void

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final skip(J)J
    .locals 5

    .prologue
    .line 153
    iget-object v0, p0, Lbvb;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    .line 156
    :try_start_0
    iget-object v0, p0, Lbvb;->c:Lbtc;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lbvb;->c:Lbtc;

    invoke-virtual {v0, v2, v3}, Lbtc;->a(J)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 165
    :cond_0
    :goto_0
    return-wide v2

    .line 159
    :catch_0
    move-exception v0

    throw v0

    .line 161
    :catch_1
    move-exception v0

    invoke-static {v0}, Lbue;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
