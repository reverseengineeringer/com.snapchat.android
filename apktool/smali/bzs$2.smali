.class final Lbzs$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcaj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbzs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcaj;

.field final synthetic b:Lbzs;


# direct methods
.method constructor <init>(Lbzs;Lcaj;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lbzs$2;->b:Lbzs;

    iput-object p2, p0, Lbzs$2;->a:Lcaj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final E_()Lcak;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lbzs$2;->b:Lbzs;

    return-object v0
.end method

.method public final a(Lbzu;J)J
    .locals 4

    .prologue
    .line 208
    const/4 v1, 0x0

    .line 209
    iget-object v0, p0, Lbzs$2;->b:Lbzs;

    invoke-virtual {v0}, Lbzs;->c()V

    .line 211
    :try_start_0
    iget-object v0, p0, Lbzs$2;->a:Lcaj;

    invoke-interface {v0, p1, p2, p3}, Lcaj;->a(Lbzu;J)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 217
    iget-object v2, p0, Lbzs$2;->b:Lbzs;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lbzs;->a(Z)V

    return-wide v0

    .line 214
    :catch_0
    move-exception v0

    .line 215
    :try_start_1
    iget-object v2, p0, Lbzs$2;->b:Lbzs;

    invoke-virtual {v2, v0}, Lbzs;->a(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 217
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lbzs$2;->b:Lbzs;

    invoke-virtual {v2, v1}, Lbzs;->a(Z)V

    throw v0
.end method

.method public final close()V
    .locals 3

    .prologue
    .line 222
    :try_start_0
    iget-object v0, p0, Lbzs$2;->a:Lcaj;

    invoke-interface {v0}, Lcaj;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    iget-object v0, p0, Lbzs$2;->b:Lbzs;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lbzs;->a(Z)V

    .line 230
    return-void

    .line 226
    :catch_0
    move-exception v0

    .line 227
    :try_start_1
    iget-object v1, p0, Lbzs$2;->b:Lbzs;

    invoke-virtual {v1, v0}, Lbzs;->a(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 229
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lbzs$2;->b:Lbzs;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lbzs;->a(Z)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AsyncTimeout.source("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lbzs$2;->a:Lcaj;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
