.class public Lorg/apache/commons/codec/language/Caverphone;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/codec/StringEncoder;


# instance fields
.field private final encoder:Lorg/apache/commons/codec/language/Caverphone2;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lorg/apache/commons/codec/language/Caverphone2;

    invoke-direct {v0}, Lorg/apache/commons/codec/language/Caverphone2;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/codec/language/Caverphone;->encoder:Lorg/apache/commons/codec/language/Caverphone2;

    .line 48
    return-void
.end method


# virtual methods
.method public caverphone(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/commons/codec/language/Caverphone;->encoder:Lorg/apache/commons/codec/language/Caverphone2;

    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/language/Caverphone2;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 73
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lorg/apache/commons/codec/EncoderException;

    const-string v1, "Parameter supplied to Caverphone encode is not of type java.lang.String"

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_0
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/Caverphone;->caverphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/Caverphone;->caverphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isCaverphoneEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 100
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/Caverphone;->caverphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2}, Lorg/apache/commons/codec/language/Caverphone;->caverphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
