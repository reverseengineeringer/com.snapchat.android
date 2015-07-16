.class public final Lbnv;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbnv$f;,
        Lbnv$c;,
        Lbnv$e;,
        Lbnv$a;,
        Lbnv$b;,
        Lbnv$d;
    }
.end annotation


# instance fields
.field final a:Lbmq;

.field final b:Lbmp;

.field public final c:Lcax;

.field final d:Lcaw;

.field e:I

.field f:I

.field private final g:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Lbmq;Lbmp;Ljava/net/Socket;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput v0, p0, Lbnv;->e:I

    .line 82
    iput v0, p0, Lbnv;->f:I

    .line 86
    iput-object p1, p0, Lbnv;->a:Lbmq;

    .line 87
    iput-object p2, p0, Lbnv;->b:Lbmp;

    .line 88
    iput-object p3, p0, Lbnv;->g:Ljava/net/Socket;

    .line 89
    invoke-static {p3}, Lcbe;->b(Ljava/net/Socket;)Lcbk;

    move-result-object v0

    invoke-static {v0}, Lcbe;->a(Lcbk;)Lcax;

    move-result-object v0

    iput-object v0, p0, Lbnv;->c:Lcax;

    .line 90
    invoke-static {p3}, Lcbe;->a(Ljava/net/Socket;)Lcbj;

    move-result-object v0

    invoke-static {v0}, Lcbe;->a(Lcbj;)Lcaw;

    move-result-object v0

    iput-object v0, p0, Lbnv;->d:Lcaw;

    .line 91
    return-void
.end method


# virtual methods
.method public final a(J)Lcbk;
    .locals 3

    .prologue
    .line 243
    iget v0, p0, Lbnv;->e:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lbnv;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_0
    const/4 v0, 0x5

    iput v0, p0, Lbnv;->e:I

    .line 245
    new-instance v0, Lbnv$e;

    invoke-direct {v0, p0, p1, p2}, Lbnv$e;-><init>(Lbnv;J)V

    return-object v0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lbnv;->d:Lcaw;

    invoke-interface {v0}, Lcaw;->flush()V

    .line 141
    return-void
.end method

.method public final a(II)V
    .locals 4

    .prologue
    .line 94
    if-eqz p1, :cond_0

    .line 95
    iget-object v0, p0, Lbnv;->c:Lcax;

    invoke-interface {v0}, Lcax;->E_()Lcbl;

    move-result-object v0

    int-to-long v2, p1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lcbl;->a(JLjava/util/concurrent/TimeUnit;)Lcbl;

    .line 97
    :cond_0
    if-eqz p2, :cond_1

    .line 98
    iget-object v0, p0, Lbnv;->d:Lcaw;

    invoke-interface {v0}, Lcaw;->E_()Lcbl;

    move-result-object v0

    int-to-long v2, p2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lcbl;->a(JLjava/util/concurrent/TimeUnit;)Lcbl;

    .line 100
    :cond_1
    return-void
.end method

.method public final a(Lbmv$a;)V
    .locals 2

    .prologue
    .line 219
    :goto_0
    iget-object v0, p0, Lbnv;->c:Lcax;

    invoke-interface {v0}, Lcax;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    sget-object v1, Lbnj;->b:Lbnj;

    invoke-virtual {v1, p1, v0}, Lbnj;->a(Lbmv$a;Ljava/lang/String;)V

    goto :goto_0

    .line 222
    :cond_0
    return-void
.end method

.method public final a(Lbmv;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 170
    iget v0, p0, Lbnv;->e:I

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lbnv;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_0
    iget-object v0, p0, Lbnv;->d:Lcaw;

    invoke-interface {v0, p2}, Lcaw;->b(Ljava/lang/String;)Lcaw;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Lcaw;->b(Ljava/lang/String;)Lcaw;

    .line 172
    const/4 v0, 0x0

    iget-object v1, p1, Lbmv;->a:[Ljava/lang/String;

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    :goto_0
    if-ge v0, v1, :cond_1

    .line 173
    iget-object v2, p0, Lbnv;->d:Lcaw;

    invoke-virtual {p1, v0}, Lbmv;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcaw;->b(Ljava/lang/String;)Lcaw;

    move-result-object v2

    const-string v3, ": "

    .line 174
    invoke-interface {v2, v3}, Lcaw;->b(Ljava/lang/String;)Lcaw;

    move-result-object v2

    .line 175
    invoke-virtual {p1, v0}, Lbmv;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcaw;->b(Ljava/lang/String;)Lcaw;

    move-result-object v2

    const-string v3, "\r\n"

    .line 176
    invoke-interface {v2, v3}, Lcaw;->b(Ljava/lang/String;)Lcaw;

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 178
    :cond_1
    iget-object v0, p0, Lbnv;->d:Lcaw;

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Lcaw;->b(Ljava/lang/String;)Lcaw;

    .line 179
    const/4 v0, 0x1

    iput v0, p0, Lbnv;->e:I

    .line 180
    return-void
.end method

.method public final b()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 151
    :try_start_0
    iget-object v2, p0, Lbnv;->g:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getSoTimeout()I
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 153
    :try_start_1
    iget-object v2, p0, Lbnv;->g:Ljava/net/Socket;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 154
    iget-object v2, p0, Lbnv;->c:Lcax;

    invoke-interface {v2}, Lcax;->d()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 155
    :try_start_2
    iget-object v2, p0, Lbnv;->g:Ljava/net/Socket;

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 164
    :goto_0
    return v0

    .line 157
    :cond_0
    iget-object v2, p0, Lbnv;->g:Ljava/net/Socket;

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v2

    iget-object v4, p0, Lbnv;->g:Ljava/net/Socket;

    invoke-virtual {v4, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    throw v2
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 162
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    .line 164
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public final c()Lbnd$a;
    .locals 5

    .prologue
    .line 184
    iget v0, p0, Lbnv;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lbnv;->e:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 185
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lbnv;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_0
    :try_start_0
    iget-object v0, p0, Lbnv;->c:Lcax;

    invoke-interface {v0}, Lcax;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbog;->a(Ljava/lang/String;)Lbog;

    move-result-object v0

    .line 192
    new-instance v1, Lbnd$a;

    invoke-direct {v1}, Lbnd$a;-><init>()V

    iget-object v2, v0, Lbog;->a:Lbna;

    .line 193
    iput-object v2, v1, Lbnd$a;->b:Lbna;

    iget v2, v0, Lbog;->b:I

    .line 194
    iput v2, v1, Lbnd$a;->c:I

    iget-object v2, v0, Lbog;->c:Ljava/lang/String;

    .line 195
    iput-object v2, v1, Lbnd$a;->d:Ljava/lang/String;

    .line 197
    new-instance v2, Lbmv$a;

    invoke-direct {v2}, Lbmv$a;-><init>()V

    .line 198
    invoke-virtual {p0, v2}, Lbnv;->a(Lbmv$a;)V

    .line 199
    sget-object v3, Lboa;->d:Ljava/lang/String;

    iget-object v4, v0, Lbog;->a:Lbna;

    invoke-virtual {v4}, Lbna;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lbmv$a;->a(Ljava/lang/String;Ljava/lang/String;)Lbmv$a;

    .line 200
    invoke-virtual {v2}, Lbmv$a;->a()Lbmv;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbnd$a;->a(Lbmv;)Lbnd$a;

    .line 202
    iget v0, v0, Lbog;->b:I

    const/16 v2, 0x64

    if-eq v0, v2, :cond_0

    .line 203
    const/4 v0, 0x4

    iput v0, p0, Lbnv;->e:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    return-object v1

    .line 207
    :catch_0
    move-exception v0

    .line 209
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unexpected end of stream on "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lbnv;->b:Lbmp;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (recycle count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lbnj;->b:Lbnj;

    iget-object v4, p0, Lbnv;->b:Lbmp;

    .line 210
    invoke-virtual {v3, v4}, Lbnj;->b(Lbmp;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 211
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 212
    throw v1
.end method
