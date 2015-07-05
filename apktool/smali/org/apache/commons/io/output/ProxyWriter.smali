.class public Lorg/apache/commons/io/output/ProxyWriter;
.super Ljava/io/FilterWriter;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Ljava/io/FilterWriter;-><init>(Ljava/io/Writer;)V

    .line 43
    return-void
.end method


# virtual methods
.method protected afterWrite(I)V
    .locals 0

    .prologue
    .line 260
    return-void
.end method

.method public append(C)Ljava/io/Writer;
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ProxyWriter;->beforeWrite(I)V

    .line 56
    iget-object v0, p0, Lorg/apache/commons/io/output/ProxyWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 57
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ProxyWriter;->afterWrite(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    return-object p0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ProxyWriter;->handleIOException(Ljava/io/IOException;)V

    goto :goto_0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    .locals 2

    .prologue
    .line 95
    const/4 v0, 0x0

    .line 96
    if-eqz p1, :cond_0

    .line 97
    :try_start_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 100
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ProxyWriter;->beforeWrite(I)V

    .line 101
    iget-object v1, p0, Lorg/apache/commons/io/output/ProxyWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 102
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ProxyWriter;->afterWrite(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    return-object p0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ProxyWriter;->handleIOException(Ljava/io/IOException;)V

    goto :goto_0
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .locals 1

    .prologue
    .line 76
    sub-int v0, p3, p2

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ProxyWriter;->beforeWrite(I)V

    .line 77
    iget-object v0, p0, Lorg/apache/commons/io/output/ProxyWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;II)Ljava/io/Writer;

    .line 78
    sub-int v0, p3, p2

    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ProxyWriter;->afterWrite(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    return-object p0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ProxyWriter;->handleIOException(Ljava/io/IOException;)V

    goto :goto_0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/output/ProxyWriter;->append(C)Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/output/ProxyWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/io/output/ProxyWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method

.method protected beforeWrite(I)V
    .locals 0

    .prologue
    .line 243
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 223
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/io/output/ProxyWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :goto_0
    return-void

    .line 224
    :catch_0
    move-exception v0

    .line 225
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ProxyWriter;->handleIOException(Ljava/io/IOException;)V

    goto :goto_0
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 210
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/io/output/ProxyWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :goto_0
    return-void

    .line 211
    :catch_0
    move-exception v0

    .line 212
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ProxyWriter;->handleIOException(Ljava/io/IOException;)V

    goto :goto_0
.end method

.method protected handleIOException(Ljava/io/IOException;)V
    .locals 0

    .prologue
    .line 272
    throw p1
.end method

.method public write(I)V
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ProxyWriter;->beforeWrite(I)V

    .line 118
    iget-object v0, p0, Lorg/apache/commons/io/output/ProxyWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(I)V

    .line 119
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ProxyWriter;->afterWrite(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v0

    .line 121
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ProxyWriter;->handleIOException(Ljava/io/IOException;)V

    goto :goto_0
.end method

.method public write(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 172
    const/4 v0, 0x0

    .line 173
    if-eqz p1, :cond_0

    .line 174
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 177
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ProxyWriter;->beforeWrite(I)V

    .line 178
    iget-object v1, p0, Lorg/apache/commons/io/output/ProxyWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ProxyWriter;->afterWrite(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :goto_0
    return-void

    .line 180
    :catch_0
    move-exception v0

    .line 181
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ProxyWriter;->handleIOException(Ljava/io/IOException;)V

    goto :goto_0
.end method

.method public write(Ljava/lang/String;II)V
    .locals 1

    .prologue
    .line 195
    :try_start_0
    invoke-virtual {p0, p3}, Lorg/apache/commons/io/output/ProxyWriter;->beforeWrite(I)V

    .line 196
    iget-object v0, p0, Lorg/apache/commons/io/output/ProxyWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 197
    invoke-virtual {p0, p3}, Lorg/apache/commons/io/output/ProxyWriter;->afterWrite(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :goto_0
    return-void

    .line 198
    :catch_0
    move-exception v0

    .line 199
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ProxyWriter;->handleIOException(Ljava/io/IOException;)V

    goto :goto_0
.end method

.method public write([C)V
    .locals 2

    .prologue
    .line 133
    const/4 v0, 0x0

    .line 134
    if-eqz p1, :cond_0

    .line 135
    :try_start_0
    array-length v0, p1

    .line 138
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ProxyWriter;->beforeWrite(I)V

    .line 139
    iget-object v1, p0, Lorg/apache/commons/io/output/ProxyWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write([C)V

    .line 140
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ProxyWriter;->afterWrite(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :goto_0
    return-void

    .line 141
    :catch_0
    move-exception v0

    .line 142
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ProxyWriter;->handleIOException(Ljava/io/IOException;)V

    goto :goto_0
.end method

.method public write([CII)V
    .locals 1

    .prologue
    .line 156
    :try_start_0
    invoke-virtual {p0, p3}, Lorg/apache/commons/io/output/ProxyWriter;->beforeWrite(I)V

    .line 157
    iget-object v0, p0, Lorg/apache/commons/io/output/ProxyWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    .line 158
    invoke-virtual {p0, p3}, Lorg/apache/commons/io/output/ProxyWriter;->afterWrite(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :goto_0
    return-void

    .line 159
    :catch_0
    move-exception v0

    .line 160
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ProxyWriter;->handleIOException(Ljava/io/IOException;)V

    goto :goto_0
.end method
