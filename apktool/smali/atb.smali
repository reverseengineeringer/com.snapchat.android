.class public final Latb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MAX_CARD_LENGTH_WITHOUT_SPACES:I = 0x10


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 22
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x10

    if-eq v0, v2, :cond_0

    move v0, v1

    .line 36
    :goto_0
    return v0

    .line 27
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    move v3, v1

    :goto_1
    if-ltz v2, :cond_3

    .line 28
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v0

    .line 29
    rem-int/lit8 v4, v2, 0x2

    if-nez v4, :cond_2

    .line 30
    mul-int/lit8 v0, v0, 0x2

    .line 31
    const/16 v4, 0x9

    if-le v0, v4, :cond_1

    div-int/lit8 v4, v0, 0xa

    rem-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v4

    :cond_1
    add-int/2addr v0, v3

    .line 27
    :goto_2
    add-int/lit8 v2, v2, -0x1

    move v3, v0

    goto :goto_1

    .line 33
    :cond_2
    add-int/2addr v0, v3

    goto :goto_2

    .line 36
    :cond_3
    rem-int/lit8 v0, v3, 0xa

    if-nez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method
