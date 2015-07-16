.class public final Lbvf;
.super Ljava/io/InputStream;

# interfaces
.implements Lbrm;


# instance fields
.field private a:Lbrf;

.field private b:Lbtc;

.field private c:Ljava/io/InputStream;

.field private d:Lbum;

.field private e:Lbrg;


# direct methods
.method public constructor <init>(Lbrf;Ljava/io/InputStream;Lbum;)V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 31
    if-nez p1, :cond_0

    .line 32
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "socket was null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_0
    if-nez p2, :cond_1

    .line 36
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "delegate was null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_1
    if-nez p3, :cond_2

    .line 40
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dispatch was null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_2
    iput-object p1, p0, Lbvf;->a:Lbrf;

    .line 44
    iput-object p2, p0, Lbvf;->c:Ljava/io/InputStream;

    .line 45
    iput-object p3, p0, Lbvf;->d:Lbum;

    .line 46
    invoke-virtual {p0}, Lbvf;->b()Lbrg;

    move-result-object v0

    iput-object v0, p0, Lbvf;->e:Lbrg;

    .line 48
    iget-object v0, p0, Lbvf;->e:Lbrg;

    if-nez v0, :cond_3

    .line 49
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "parser was null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_3
    return-void
.end method

.method private a(Ljava/lang/Exception;)V
    .locals 3

    .prologue
    .line 85
    :try_start_0
    invoke-direct {p0}, Lbvf;->e()Lbtc;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lbtb;->a(Ljava/lang/Throwable;)Lbtb;

    move-result-object v1

    iput-object v1, v0, Lbtc;->g:Lbtb;

    iget-object v1, p0, Lbvf;->d:Lbum;

    sget-object v2, Lbtc$a;->h:Lbtc$a;

    invoke-virtual {v1, v0, v2}, Lbum;->a(Lbtc;Lbtc$a;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v0

    throw v0

    .line 88
    :catch_1
    move-exception v0

    invoke-static {v0}, Lbue;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a([BII)V
    .locals 2

    .prologue
    .line 171
    :try_start_0
    iget-object v0, p0, Lbvf;->e:Lbrg;

    invoke-virtual {v0, p1, p2, p3}, Lbrg;->a([BII)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 179
    :goto_0
    return-void

    .line 172
    :catch_0
    move-exception v0

    throw v0

    .line 174
    :catch_1
    move-exception v0

    .line 175
    sget-object v1, Lbrt;->d:Lbrt;

    iput-object v1, p0, Lbvf;->e:Lbrg;

    .line 177
    invoke-static {v0}, Lbue;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private e()Lbtc;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lbvf;->b:Lbtc;

    if-nez v0, :cond_0

    .line 255
    iget-object v0, p0, Lbvf;->a:Lbrf;

    invoke-interface {v0}, Lbrf;->b()Lbtc;

    move-result-object v0

    iput-object v0, p0, Lbvf;->b:Lbtc;

    .line 258
    :cond_0
    iget-object v0, p0, Lbvf;->b:Lbtc;

    return-object v0
.end method


# virtual methods
.method public final a()Lbrg;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lbvf;->e:Lbrg;

    return-object v0
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 204
    invoke-direct {p0}, Lbvf;->e()Lbtc;

    move-result-object v0

    .line 206
    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {v0}, Lbtc;->d()V

    .line 208
    iput p1, v0, Lbtc;->e:I

    .line 210
    :cond_0
    return-void
.end method

.method public final a(Lbrg;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lbvf;->e:Lbrg;

    .line 216
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 291
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 199
    return-void
.end method

.method public final a(Ljava/io/InputStream;)Z
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lbvf;->c:Ljava/io/InputStream;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final available()I
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lbvf;->c:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public final b()Lbrg;
    .locals 1

    .prologue
    .line 267
    new-instance v0, Lbrq;

    invoke-direct {v0, p0}, Lbrq;-><init>(Lbrm;)V

    return-object v0
.end method

.method public final b(I)V
    .locals 4

    .prologue
    .line 225
    const/4 v0, 0x0

    .line 226
    iget-object v1, p0, Lbvf;->b:Lbtc;

    if-eqz v1, :cond_1

    .line 229
    iget-object v1, p0, Lbvf;->b:Lbtc;

    iget v1, v1, Lbtc;->e:I

    .line 231
    const/16 v2, 0x64

    if-lt v1, v2, :cond_0

    const/16 v2, 0xc8

    if-ge v1, v2, :cond_0

    .line 240
    new-instance v0, Lbtc;

    iget-object v1, p0, Lbvf;->b:Lbtc;

    invoke-virtual {v1}, Lbtc;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbtc;-><init>(Ljava/lang/String;)V

    .line 241
    iget-object v1, p0, Lbvf;->b:Lbtc;

    iget-wide v2, v1, Lbtc;->a:J

    invoke-virtual {v0, v2, v3}, Lbtc;->e(J)V

    .line 242
    iget-object v1, p0, Lbvf;->b:Lbtc;

    iget-wide v2, v1, Lbtc;->d:J

    invoke-virtual {v0, v2, v3}, Lbtc;->d(J)V

    .line 243
    iget-object v1, p0, Lbvf;->b:Lbtc;

    iget-object v1, v1, Lbtc;->f:Ljava/lang/String;

    iput-object v1, v0, Lbtc;->f:Ljava/lang/String;

    .line 246
    :cond_0
    iget-object v1, p0, Lbvf;->b:Lbtc;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Lbtc;->b(J)V

    .line 247
    iget-object v1, p0, Lbvf;->d:Lbum;

    iget-object v2, p0, Lbvf;->b:Lbtc;

    sget-object v3, Lbtc$a;->g:Lbtc$a;

    invoke-virtual {v1, v2, v3}, Lbum;->a(Lbtc;Lbtc$a;)V

    .line 250
    :cond_1
    iput-object v0, p0, Lbvf;->b:Lbtc;

    .line 251
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 272
    invoke-direct {p0}, Lbvf;->e()Lbtc;

    move-result-object v1

    .line 273
    const/4 v0, 0x0

    .line 275
    if-eqz v1, :cond_0

    .line 278
    iget-object v0, v1, Lbtc;->f:Ljava/lang/String;

    .line 281
    :cond_0
    return-object v0
.end method

.method public final close()V
    .locals 1

    .prologue
    .line 61
    :try_start_0
    iget-object v0, p0, Lbvf;->e:Lbrg;

    invoke-virtual {v0}, Lbrg;->f()V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 68
    :goto_0
    iget-object v0, p0, Lbvf;->c:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 69
    return-void

    .line 62
    :catch_0
    move-exception v0

    throw v0

    .line 64
    :catch_1
    move-exception v0

    invoke-static {v0}, Lbue;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lbvf;->b:Lbtc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbvf;->b:Lbtc;

    iget-object v0, v0, Lbtc;->g:Lbtb;

    sget-object v1, Lbtb;->a:Lbtb;

    if-ne v0, v1, :cond_0

    .line 303
    iget-object v0, p0, Lbvf;->e:Lbrg;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lbvf;->e:Lbrg;

    invoke-virtual {v0}, Lbrg;->f()V

    .line 307
    :cond_0
    return-void
.end method

.method public final mark(I)V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lbvf;->c:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 75
    return-void
.end method

.method public final markSupported()Z
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lbvf;->c:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public final read()I
    .locals 3

    .prologue
    .line 109
    :try_start_0
    iget-object v0, p0, Lbvf;->c:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 119
    :try_start_1
    iget-object v0, p0, Lbvf;->e:Lbrg;

    invoke-virtual {v0, v1}, Lbrg;->a(I)Z
    :try_end_1
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 128
    :goto_0
    return v1

    .line 113
    :catch_0
    move-exception v0

    .line 114
    invoke-direct {p0, v0}, Lbvf;->a(Ljava/lang/Exception;)V

    .line 115
    throw v0

    .line 120
    :catch_1
    move-exception v0

    throw v0

    .line 122
    :catch_2
    move-exception v0

    .line 123
    sget-object v2, Lbrt;->d:Lbrt;

    iput-object v2, p0, Lbvf;->e:Lbrg;

    .line 125
    invoke-static {v0}, Lbue;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final read([B)I
    .locals 2

    .prologue
    .line 137
    :try_start_0
    iget-object v0, p0, Lbvf;->c:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 146
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lbvf;->a([BII)V

    .line 148
    return v0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    invoke-direct {p0, v0}, Lbvf;->a(Ljava/lang/Exception;)V

    .line 143
    throw v0
.end method

.method public final read([BII)I
    .locals 1

    .prologue
    .line 155
    :try_start_0
    iget-object v0, p0, Lbvf;->c:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 164
    invoke-direct {p0, p1, p2, v0}, Lbvf;->a([BII)V

    .line 166
    return v0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    invoke-direct {p0, v0}, Lbvf;->a(Ljava/lang/Exception;)V

    .line 161
    throw v0
.end method

.method public final declared-synchronized reset()V
    .locals 1

    .prologue
    .line 188
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbvf;->c:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    monitor-exit p0

    return-void

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final skip(J)J
    .locals 3

    .prologue
    .line 194
    iget-object v0, p0, Lbvf;->c:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method
