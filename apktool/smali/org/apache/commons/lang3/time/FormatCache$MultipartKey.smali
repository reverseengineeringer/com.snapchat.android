.class Lorg/apache/commons/lang3/time/FormatCache$MultipartKey;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/time/FormatCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MultipartKey"
.end annotation


# instance fields
.field private hashCode:I

.field private final keys:[Ljava/lang/Object;


# direct methods
.method public varargs constructor <init>([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    iput-object p1, p0, Lorg/apache/commons/lang3/time/FormatCache$MultipartKey;->keys:[Ljava/lang/Object;

    .line 235
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lorg/apache/commons/lang3/time/FormatCache$MultipartKey;->keys:[Ljava/lang/Object;

    check-cast p1, Lorg/apache/commons/lang3/time/FormatCache$MultipartKey;

    iget-object v1, p1, Lorg/apache/commons/lang3/time/FormatCache$MultipartKey;->keys:[Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 253
    iget v1, p0, Lorg/apache/commons/lang3/time/FormatCache$MultipartKey;->hashCode:I

    if-nez v1, :cond_2

    .line 255
    iget-object v2, p0, Lorg/apache/commons/lang3/time/FormatCache$MultipartKey;->keys:[Ljava/lang/Object;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 256
    if-eqz v4, :cond_0

    .line 257
    mul-int/lit8 v0, v0, 0x7

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    add-int/2addr v0, v4

    .line 255
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 260
    :cond_1
    iput v0, p0, Lorg/apache/commons/lang3/time/FormatCache$MultipartKey;->hashCode:I

    .line 262
    :cond_2
    iget v0, p0, Lorg/apache/commons/lang3/time/FormatCache$MultipartKey;->hashCode:I

    return v0
.end method
