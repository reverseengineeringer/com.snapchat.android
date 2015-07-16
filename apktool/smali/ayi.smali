.class public final Layi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field protected static final BAD_LENGTH_EXCEPTION_MESSAGE_PREFIX:Ljava/lang/String; = "Server sent a message with a bad length: "

.field private static final INITIAL_BUFFER_CAPACITY:I = 0x400

.field protected static final SSL_PACKET_MAX_LENGTH:I = 0xdbba0

.field private static final TAG:Ljava/lang/String; = "SCMessageInputStream"


# instance fields
.field buffer:[B

.field private final mGson:Laum;

.field private final mInputStream:Ljava/io/DataInputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Laum;)V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Layi;->buffer:[B

    .line 37
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Layi;->mInputStream:Ljava/io/DataInputStream;

    .line 38
    iput-object p2, p0, Layi;->mGson:Laum;

    .line 39
    return-void
.end method


# virtual methods
.method public final a()Lbji;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 43
    iget-object v0, p0, Layi;->mInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 45
    if-lez v0, :cond_0

    const v1, 0xdbba0

    if-le v0, v1, :cond_1

    .line 46
    :cond_0
    new-instance v1, Lcom/snapchat/android/analytics/framework/ErrorMetric;

    const-string v2, "INVALID_SSL_PACKET_RECEIVED"

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/ErrorMetric;-><init>(Ljava/lang/String;)V

    const-string v2, "PACKET_LENGTH"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 48
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Server sent a message with a bad length: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 49
    :cond_1
    iget-object v1, p0, Layi;->buffer:[B

    array-length v1, v1

    if-ge v1, v0, :cond_2

    .line 56
    :try_start_0
    new-array v1, v0, [B

    iput-object v1, p0, Layi;->buffer:[B
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :cond_2
    :goto_0
    iget-object v1, p0, Layi;->mInputStream:Ljava/io/DataInputStream;

    iget-object v2, p0, Layi;->buffer:[B

    invoke-virtual {v1, v2, v4, v0}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 65
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Layi;->buffer:[B

    sget-object v3, Lorg/apache/commons/io/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v4, v0, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 66
    iget-object v0, p0, Layi;->mGson:Laum;

    const-class v2, Lbji;

    invoke-virtual {v0, v1, v2}, Laum;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbji;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected message contents which parsed as null: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :catch_0
    move-exception v1

    invoke-static {}, Ljava/lang/System;->gc()V

    .line 61
    new-array v1, v0, [B

    iput-object v1, p0, Layi;->buffer:[B

    goto :goto_0

    .line 66
    :cond_3
    invoke-virtual {v0}, Lbji;->j()Lbji$a;

    move-result-object v2

    invoke-static {v2}, Laty;->a(Lbji$a;)Ljava/lang/Class;

    move-result-object v2

    if-nez v2, :cond_4

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected message type "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lbji;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " from contents: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    iget-object v0, p0, Layi;->mGson:Laum;

    invoke-virtual {v0, v1, v2}, Laum;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbji;

    return-object v0
.end method

.method public final close()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Layi;->mInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 85
    return-void
.end method
