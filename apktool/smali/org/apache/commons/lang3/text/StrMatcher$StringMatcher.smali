.class final Lorg/apache/commons/lang3/text/StrMatcher$StringMatcher;
.super Lorg/apache/commons/lang3/text/StrMatcher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/text/StrMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StringMatcher"
.end annotation


# instance fields
.field private final chars:[C


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 352
    invoke-direct {p0}, Lorg/apache/commons/lang3/text/StrMatcher;-><init>()V

    .line 353
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrMatcher$StringMatcher;->chars:[C

    .line 354
    return-void
.end method


# virtual methods
.method public final isMatch([CIII)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 367
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrMatcher$StringMatcher;->chars:[C

    array-length v2, v0

    .line 368
    add-int v0, p2, v2

    if-le v0, p4, :cond_1

    .line 376
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    .line 371
    :goto_1
    iget-object v3, p0, Lorg/apache/commons/lang3/text/StrMatcher$StringMatcher;->chars:[C

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 372
    iget-object v3, p0, Lorg/apache/commons/lang3/text/StrMatcher$StringMatcher;->chars:[C

    aget-char v3, v3, v0

    aget-char v4, p1, p2

    if-ne v3, v4, :cond_0

    .line 371
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    .line 376
    goto :goto_0
.end method
