.class public final Lbve;
.super Ljava/io/OutputStream;

# interfaces
.implements Lbrm;


# instance fields
.field private a:Lbrf;

.field private b:Ljava/io/OutputStream;

.field private c:Lbtc;

.field private d:Lbrg;


# direct methods
.method public constructor <init>(Lbrf;Ljava/io/OutputStream;)V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 25
    if-nez p1, :cond_0

    .line 26
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "socket was null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_0
    if-nez p2, :cond_1

    .line 30
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "output stream was null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_1
    iput-object p1, p0, Lbve;->a:Lbrf;

    .line 34
    iput-object p2, p0, Lbve;->b:Ljava/io/OutputStream;

    .line 35
    invoke-virtual {p0}, Lbve;->b()Lbrg;

    move-result-object v0

    iput-object v0, p0, Lbve;->d:Lbrg;

    .line 37
    iget-object v0, p0, Lbve;->d:Lbrg;

    if-nez v0, :cond_2

    .line 38
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "parser was null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_2
    return-void
.end method

.method private a([BII)V
    .locals 1

    .prologue
    .line 93
    :try_start_0
    iget-object v0, p0, Lbve;->d:Lbrg;

    invoke-virtual {v0, p1, p2, p3}, Lbrg;->a([BII)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 101
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v0

    throw v0

    .line 96
    :catch_1
    move-exception v0

    invoke-static {v0}, Lbue;->a(Ljava/lang/Throwable;)V

    .line 99
    sget-object v0, Lbrt;->d:Lbrt;

    iput-object v0, p0, Lbve;->d:Lbrg;

    goto :goto_0
.end method

.method private d()Lbtc;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lbve;->c:Lbtc;

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Lbve;->a:Lbrf;

    invoke-interface {v0}, Lbrf;->a()Lbtc;

    move-result-object v0

    iput-object v0, p0, Lbve;->c:Lbtc;

    .line 155
    :cond_0
    iget-object v0, p0, Lbve;->c:Lbtc;

    return-object v0
.end method


# virtual methods
.method public final a()Lbrg;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lbve;->d:Lbrg;

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 124
    return-void
.end method

.method public final a(Lbrg;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lbve;->d:Lbrg;

    .line 130
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 186
    invoke-direct {p0}, Lbve;->d()Lbtc;

    move-result-object v0

    .line 187
    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {v0, p1}, Lbtc;->a(Ljava/lang/String;)V

    .line 192
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 109
    invoke-direct {p0}, Lbve;->d()Lbtc;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Lbtc;->c()V

    .line 112
    iput-object p1, v0, Lbtc;->f:Ljava/lang/String;

    .line 113
    const/4 v1, 0x0

    iput-object v1, v0, Lbtc;->i:Ljava/lang/String;

    iget-object v1, v0, Lbtc;->h:Lbus;

    if-eqz p2, :cond_0

    iput-object p2, v1, Lbus;->c:Ljava/lang/String;

    .line 119
    :cond_0
    iget-object v1, p0, Lbve;->a:Lbrf;

    invoke-interface {v1, v0}, Lbrf;->a(Lbtc;)V

    .line 120
    return-void
.end method

.method public final a(Ljava/io/OutputStream;)Z
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lbve;->b:Ljava/io/OutputStream;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Lbrg;
    .locals 1

    .prologue
    .line 165
    new-instance v0, Lbro;

    invoke-direct {v0, p0}, Lbro;-><init>(Lbrm;)V

    return-object v0
.end method

.method public final b(I)V
    .locals 4

    .prologue
    .line 139
    iget-object v0, p0, Lbve;->c:Lbtc;

    .line 140
    const/4 v1, 0x0

    iput-object v1, p0, Lbve;->c:Lbtc;

    .line 142
    if-eqz v0, :cond_0

    .line 145
    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lbtc;->d(J)V

    .line 148
    :cond_0
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 172
    invoke-direct {p0}, Lbve;->d()Lbtc;

    move-result-object v1

    .line 175
    const/4 v0, 0x0

    .line 177
    if-eqz v1, :cond_0

    .line 178
    iget-object v0, v1, Lbtc;->f:Ljava/lang/String;

    .line 181
    :cond_0
    return-object v0
.end method

.method public final close()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lbve;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 50
    return-void
.end method

.method public final flush()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lbve;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 45
    return-void
.end method

.method public final write(I)V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lbve;->b:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 57
    :try_start_0
    iget-object v0, p0, Lbve;->d:Lbrg;

    invoke-virtual {v0, p1}, Lbrg;->a(I)Z
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 65
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    throw v0

    .line 60
    :catch_1
    move-exception v0

    invoke-static {v0}, Lbue;->a(Ljava/lang/Throwable;)V

    .line 62
    sget-object v0, Lbrt;->d:Lbrt;

    iput-object v0, p0, Lbve;->d:Lbrg;

    goto :goto_0
.end method

.method public final write([B)V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lbve;->b:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 77
    if-eqz p1, :cond_0

    .line 78
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lbve;->a([BII)V

    .line 80
    :cond_0
    return-void
.end method

.method public final write([BII)V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lbve;->b:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 86
    if-eqz p1, :cond_0

    .line 87
    invoke-direct {p0, p1, p2, p3}, Lbve;->a([BII)V

    .line 89
    :cond_0
    return-void
.end method
