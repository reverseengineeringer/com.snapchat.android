.class public final Layh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final SUPPLEMENTARY_ENDING_INDEX:I = 0xfe0f

.field private static final SUPPLEMENTARY_STARTING_INDEX:I = 0xfe00

.field private static final emojiRanges:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 15
    const/4 v0, 0x3

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    sput-object v0, Layh;->emojiRanges:[[I

    return-void

    :array_0
    .array-data 4
        0x1f000
        0x1ffff
    .end array-data

    :array_1
    .array-data 4
        0x20a0
        0x2bff
    .end array-data

    :array_2
    .array-data 4
        0xfe4e5
        0xfe4ee
    .end array-data
.end method

.method public static a()Z
    .locals 2
    .annotation build Lawj;
    .end annotation

    .prologue
    .line 38
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Z)Z
    .locals 10
    .param p0    # Ljava/lang/String;
        .annotation build Lchd;
        .end annotation
    .end param
    .annotation build Lawj;
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 43
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    move v2, v1

    .line 47
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 48
    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    .line 49
    sget-object v6, Layh;->emojiRanges:[[I

    array-length v7, v6

    move v3, v1

    :goto_2
    if-ge v3, v7, :cond_5

    aget-object v8, v6, v3

    aget v9, v8, v1

    if-lt v5, v9, :cond_4

    aget v8, v8, v4

    if-gt v5, v8, :cond_4

    move v3, v4

    .line 51
    :goto_3
    if-nez v3, :cond_3

    if-eqz p1, :cond_2

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v6

    if-nez v6, :cond_3

    :cond_2
    if-lez v0, :cond_0

    const v6, 0xfe00

    if-lt v5, v6, :cond_0

    const v6, 0xfe0f

    if-gt v5, v6, :cond_0

    if-eqz v2, :cond_0

    .line 57
    :cond_3
    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v0, v2

    move v2, v3

    .line 58
    goto :goto_1

    .line 49
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    move v3, v1

    goto :goto_3

    :cond_6
    move v1, v4

    .line 60
    goto :goto_0
.end method
