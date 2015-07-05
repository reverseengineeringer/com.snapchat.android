.class public final Lbue;
.super Ljava/io/InputStream;

# interfaces
.implements Lbql;


# instance fields
.field private a:Lbqe;

.field private b:Lbsb;

.field private c:Ljava/io/InputStream;

.field private d:Lbtl;

.field private e:Lbqf;


# direct methods
.method public constructor <init>(Lbqe;Ljava/io/InputStream;Lbtl;)V
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
    iput-object p1, p0, Lbue;->a:Lbqe;

    .line 44
    iput-object p2, p0, Lbue;->c:Ljava/io/InputStream;

    .line 45
    iput-object p3, p0, Lbue;->d:Lbtl;

    .line 46
    invoke-virtual {p0}, Lbue;->b()Lbqf;

    move-result-object v0

    iput-object v0, p0, Lbue;->e:Lbqf;

    .line 48
    iget-object v0, p0, Lbue;->e:Lbqf;

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
    invoke-direct {p0}, Lbue;->e()Lbsb;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lbsa;->a(Ljava/lang/Throwable;)Lbsa;

    move-result-object v1

    iput-object v1, v0, Lbsb;->g:Lbsa;

    iget-object v1, p0, Lbue;->d:Lbtl;

    sget-object v2, Lbsb$a;->h:Lbsb$a;

    invoke-virtual {v1, v0, v2}, Lbtl;->a(Lbsb;Lbsb$a;)V
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

    invoke-static {v0}, Lbtd;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a([BII)V
    .locals 2

    .prologue
    .line 171
    :try_start_0
    iget-object v0, p0, Lbue;->e:Lbqf;

    invoke-virtual {v0, p1, p2, p3}, Lbqf;->a([BII)V
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
    sget-object v1, Lbqs;->d:Lbqs;

    iput-object v1, p0, Lbue;->e:Lbqf;

    .line 177
    invoke-static {v0}, Lbtd;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private e()Lbsb;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lbue;->b:Lbsb;

    if-nez v0, :cond_0

    .line 255
    iget-object v0, p0, Lbue;->a:Lbqe;

    invoke-interface {v0}, Lbqe;->b()Lbsb;

    move-result-object v0

    iput-object v0, p0, Lbue;->b:Lbsb;

    .line 258
    :cond_0
    iget-object v0, p0, Lbue;->b:Lbsb;

    return-object v0
.end method


# virtual methods
.method public final a()Lbqf;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lbue;->e:Lbqf;

    return-object v0
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 204
    invoke-direct {p0}, Lbue;->e()Lbsb;

    move-result-object v0

    .line 206
    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {v0}, Lbsb;->d()V

    .line 208
    iput p1, v0, Lbsb;->e:I

    .line 210
    :cond_0
    return-void
.end method

.method public final a(Lbqf;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lbue;->e:Lbqf;

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
    iget-object v0, p0, Lbue;->c:Ljava/io/InputStream;

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
    iget-object v0, p0, Lbue;->c:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public final b()Lbqf;
    .locals 1

    .prologue
    .line 267
    new-instance v0, Lbqp;

    invoke-direct {v0, p0}, Lbqp;-><init>(Lbql;)V

    return-object v0
.end method

.method public final b(I)V
    .locals 4

    .prologue
    .line 225
    const/4 v0, 0x0

    .line 226
    iget-object v1, p0, Lbue;->b:Lbsb;

    if-eqz v1, :cond_1

    .line 229
    iget-object v1, p0, Lbue;->b:Lbsb;

    iget v1, v1, Lbsb;->e:I

    .line 231
    const/16 v2, 0x64

    if-lt v1, v2, :cond_0

    const/16 v2, 0xc8

    if-ge v1, v2, :cond_0

    .line 240
    new-instance v0, Lbsb;

    iget-object v1, p0, Lbue;->b:Lbsb;

    invoke-virtual {v1}, Lbsb;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbsb;-><init>(Ljava/lang/String;)V

    .line 241
    iget-object v1, p0, Lbue;->b:Lbsb;

    iget-wide v2, v1, Lbsb;->a:J

    invoke-virtual {v0, v2, v3}, Lbsb;->e(J)V

    .line 242
    iget-object v1, p0, Lbue;->b:Lbsb;

    iget-wide v2, v1, Lbsb;->d:J

    invoke-virtual {v0, v2, v3}, Lbsb;->d(J)V

    .line 243
    iget-object v1, p0, Lbue;->b:Lbsb;

    iget-object v1, v1, Lbsb;->f:Ljava/lang/String;

    iput-object v1, v0, Lbsb;->f:Ljava/lang/String;

    .line 246
    :cond_0
    iget-object v1, p0, Lbue;->b:Lbsb;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Lbsb;->b(J)V

    .line 247
    iget-object v1, p0, Lbue;->d:Lbtl;

    iget-object v2, p0, Lbue;->b:Lbsb;

    sget-object v3, Lbsb$a;->g:Lbsb$a;

    invoke-virtual {v1, v2, v3}, Lbtl;->a(Lbsb;Lbsb$a;)V

    .line 250
    :cond_1
    iput-object v0, p0, Lbue;->b:Lbsb;

    .line 251
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 272
    invoke-direct {p0}, Lbue;->e()Lbsb;

    move-result-object v1

    .line 273
    const/4 v0, 0x0

    .line 275
    if-eqz v1, :cond_0

    .line 278
    iget-object v0, v1, Lbsb;->f:Ljava/lang/String;

    .line 281
    :cond_0
    return-object v0
.end method

.method public final close()V
    .locals 1

    .prologue
    .line 61
    :try_start_0
    iget-object v0, p0, Lbue;->e:Lbqf;

    invoke-virtual {v0}, Lbqf;->f()V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 68
    :goto_0
    iget-object v0, p0, Lbue;->c:Ljava/io/InputStream;

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

    invoke-static {v0}, Lbtd;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lbue;->b:Lbsb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbue;->b:Lbsb;

    iget-object v0, v0, Lbsb;->g:Lbsa;

    sget-object v1, Lbsa;->a:Lbsa;

    if-ne v0, v1, :cond_0

    .line 303
    iget-object v0, p0, Lbue;->e:Lbqf;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lbue;->e:Lbqf;

    invoke-virtual {v0}, Lbqf;->f()V

    .line 307
    :cond_0
    return-void
.end method

.method public final mark(I)V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lbue;->c:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 75
    return-void
.end method

.method public final markSupported()Z
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lbue;->c:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public final read()I
    .locals 3

    .prologue
    .line 109
    :try_start_0
    iget-object v0, p0, Lbue;->c:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 119
    :try_start_1
    iget-object v0, p0, Lbue;->e:Lbqf;

    invoke-virtual {v0, v1}, Lbqf;->a(I)Z
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
    invoke-direct {p0, v0}, Lbue;->a(Ljava/lang/Exception;)V

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
    sget-object v2, Lbqs;->d:Lbqs;

    iput-object v2, p0, Lbue;->e:Lbqf;

    .line 125
    invoke-static {v0}, Lbtd;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final read([B)I
    .locals 2

    .prologue
    .line 137
    :try_start_0
    iget-object v0, p0, Lbue;->c:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 146
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lbue;->a([BII)V

    .line 148
    return v0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    invoke-direct {p0, v0}, Lbue;->a(Ljava/lang/Exception;)V

    .line 143
    throw v0
.end method

.method public final read([BII)I
    .locals 1

    .prologue
    .line 155
    :try_start_0
    iget-object v0, p0, Lbue;->c:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 164
    invoke-direct {p0, p1, p2, v0}, Lbue;->a([BII)V

    .line 166
    return v0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    invoke-direct {p0, v0}, Lbue;->a(Ljava/lang/Exception;)V

    .line 161
    throw v0
.end method

.method public final declared-synchronized reset()V
    .locals 1

    .prologue
    .line 188
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbue;->c:Ljava/io/InputStream;

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
    iget-object v0, p0, Lbue;->c:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method
