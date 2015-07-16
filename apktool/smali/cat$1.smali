.class final Lcat$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcbj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcbj;

.field final synthetic b:Lcat;


# direct methods
.method constructor <init>(Lcat;Lcbj;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcat$1;->b:Lcat;

    iput-object p2, p0, Lcat$1;->a:Lcbj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final E_()Lcbl;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcat$1;->b:Lcat;

    return-object v0
.end method

.method public final a_(Lcav;J)V
    .locals 4

    .prologue
    .line 152
    iget-object v0, p0, Lcat$1;->b:Lcat;

    invoke-virtual {v0}, Lcat;->c()V

    .line 155
    :try_start_0
    iget-object v0, p0, Lcat$1;->a:Lcbj;

    invoke-interface {v0, p1, p2, p3}, Lcbj;->a_(Lcav;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    iget-object v0, p0, Lcat$1;->b:Lcat;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcat;->a(Z)V

    .line 161
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 158
    :try_start_1
    iget-object v1, p0, Lcat$1;->b:Lcat;

    invoke-virtual {v1, v0}, Lcat;->a(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcat$1;->b:Lcat;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcat;->a(Z)V

    throw v0
.end method

.method public final close()V
    .locals 3

    .prologue
    .line 178
    iget-object v0, p0, Lcat$1;->b:Lcat;

    invoke-virtual {v0}, Lcat;->c()V

    .line 181
    :try_start_0
    iget-object v0, p0, Lcat$1;->a:Lcbj;

    invoke-interface {v0}, Lcbj;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    iget-object v0, p0, Lcat$1;->b:Lcat;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcat;->a(Z)V

    .line 187
    return-void

    .line 183
    :catch_0
    move-exception v0

    .line 184
    :try_start_1
    iget-object v1, p0, Lcat$1;->b:Lcat;

    invoke-virtual {v1, v0}, Lcat;->a(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcat$1;->b:Lcat;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcat;->a(Z)V

    throw v0
.end method

.method public final flush()V
    .locals 3

    .prologue
    .line 165
    iget-object v0, p0, Lcat$1;->b:Lcat;

    invoke-virtual {v0}, Lcat;->c()V

    .line 168
    :try_start_0
    iget-object v0, p0, Lcat$1;->a:Lcbj;

    invoke-interface {v0}, Lcbj;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    iget-object v0, p0, Lcat$1;->b:Lcat;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcat;->a(Z)V

    .line 174
    return-void

    .line 170
    :catch_0
    move-exception v0

    .line 171
    :try_start_1
    iget-object v1, p0, Lcat$1;->b:Lcat;

    invoke-virtual {v1, v0}, Lcat;->a(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcat$1;->b:Lcat;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcat;->a(Z)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AsyncTimeout.sink("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcat$1;->a:Lcbj;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
