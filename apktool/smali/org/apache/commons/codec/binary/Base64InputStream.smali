.class public Lorg/apache/commons/codec/binary/Base64InputStream;
.super Lorg/apache/commons/codec/binary/BaseNCodecInputStream;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/codec/binary/Base64InputStream;-><init>(Ljava/io/InputStream;Z)V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 2

    .prologue
    .line 66
    new-instance v0, Lorg/apache/commons/codec/binary/Base64;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/binary/Base64;-><init>(Z)V

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/codec/binary/BaseNCodecInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/commons/codec/binary/BaseNCodec;Z)V

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;ZI[B)V
    .locals 1

    .prologue
    .line 86
    new-instance v0, Lorg/apache/commons/codec/binary/Base64;

    invoke-direct {v0, p3, p4}, Lorg/apache/commons/codec/binary/Base64;-><init>(I[B)V

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/codec/binary/BaseNCodecInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/commons/codec/binary/BaseNCodec;Z)V

    .line 87
    return-void
.end method
