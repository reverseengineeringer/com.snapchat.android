.class public final Landroid/support/v4/text/BidiFormatter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/text/BidiFormatter$1;,
        Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;,
        Landroid/support/v4/text/BidiFormatter$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_FLAGS:I = 0x2

.field private static final DEFAULT_LTR_INSTANCE:Landroid/support/v4/text/BidiFormatter;

.field private static final DEFAULT_RTL_INSTANCE:Landroid/support/v4/text/BidiFormatter;

.field private static DEFAULT_TEXT_DIRECTION_HEURISTIC:Landroid/support/v4/text/TextDirectionHeuristicCompat; = null

.field private static final DIR_LTR:I = -0x1

.field private static final DIR_RTL:I = 0x1

.field private static final DIR_UNKNOWN:I = 0x0

.field private static final EMPTY_STRING:Ljava/lang/String; = ""

.field private static final FLAG_STEREO_RESET:I = 0x2

.field private static final LRE:C = '\u202a'

.field private static final LRM:C = '\u200e'

.field private static final LRM_STRING:Ljava/lang/String;

.field private static final PDF:C = '\u202c'

.field private static final RLE:C = '\u202b'

.field private static final RLM:C = '\u200f'

.field private static final RLM_STRING:Ljava/lang/String;


# instance fields
.field private final mDefaultTextDirectionHeuristicCompat:Landroid/support/v4/text/TextDirectionHeuristicCompat;

.field private final mFlags:I

.field private final mIsRtlContext:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 83
    sget-object v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_LTR:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    sput-object v0, Landroid/support/v4/text/BidiFormatter;->DEFAULT_TEXT_DIRECTION_HEURISTIC:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    .line 113
    const/16 v0, 0x200e

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v4/text/BidiFormatter;->LRM_STRING:Ljava/lang/String;

    .line 118
    const/16 v0, 0x200f

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v4/text/BidiFormatter;->RLM_STRING:Ljava/lang/String;

    .line 215
    new-instance v0, Landroid/support/v4/text/BidiFormatter;

    const/4 v1, 0x0

    sget-object v2, Landroid/support/v4/text/BidiFormatter;->DEFAULT_TEXT_DIRECTION_HEURISTIC:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    invoke-direct {v0, v1, v3, v2}, Landroid/support/v4/text/BidiFormatter;-><init>(ZILandroid/support/v4/text/TextDirectionHeuristicCompat;)V

    sput-object v0, Landroid/support/v4/text/BidiFormatter;->DEFAULT_LTR_INSTANCE:Landroid/support/v4/text/BidiFormatter;

    .line 220
    new-instance v0, Landroid/support/v4/text/BidiFormatter;

    const/4 v1, 0x1

    sget-object v2, Landroid/support/v4/text/BidiFormatter;->DEFAULT_TEXT_DIRECTION_HEURISTIC:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    invoke-direct {v0, v1, v3, v2}, Landroid/support/v4/text/BidiFormatter;-><init>(ZILandroid/support/v4/text/TextDirectionHeuristicCompat;)V

    sput-object v0, Landroid/support/v4/text/BidiFormatter;->DEFAULT_RTL_INSTANCE:Landroid/support/v4/text/BidiFormatter;

    return-void
.end method

.method private constructor <init>(ZILandroid/support/v4/text/TextDirectionHeuristicCompat;)V
    .locals 0

    .prologue
    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    iput-boolean p1, p0, Landroid/support/v4/text/BidiFormatter;->mIsRtlContext:Z

    .line 262
    iput p2, p0, Landroid/support/v4/text/BidiFormatter;->mFlags:I

    .line 263
    iput-object p3, p0, Landroid/support/v4/text/BidiFormatter;->mDefaultTextDirectionHeuristicCompat:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    .line 264
    return-void
.end method

.method synthetic constructor <init>(ZILandroid/support/v4/text/TextDirectionHeuristicCompat;B)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/text/BidiFormatter;-><init>(ZILandroid/support/v4/text/TextDirectionHeuristicCompat;)V

    return-void
.end method

.method static synthetic access$000(Ljava/util/Locale;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 78
    invoke-static {p0}, Landroid/support/v4/text/TextUtilsCompat;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$100()Landroid/support/v4/text/TextDirectionHeuristicCompat;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Landroid/support/v4/text/BidiFormatter;->DEFAULT_TEXT_DIRECTION_HEURISTIC:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    return-object v0
.end method

.method static synthetic access$200()Landroid/support/v4/text/BidiFormatter;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Landroid/support/v4/text/BidiFormatter;->DEFAULT_RTL_INSTANCE:Landroid/support/v4/text/BidiFormatter;

    return-object v0
.end method

.method static synthetic access$300()Landroid/support/v4/text/BidiFormatter;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Landroid/support/v4/text/BidiFormatter;->DEFAULT_LTR_INSTANCE:Landroid/support/v4/text/BidiFormatter;

    return-object v0
.end method

.method private static getEntryDir(Ljava/lang/String;)I
    .locals 14

    .prologue
    const/16 v13, 0x3c

    const/16 v7, 0xc

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v1, 0x0

    .line 479
    new-instance v8, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;

    invoke-direct {v8, p0}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;-><init>(Ljava/lang/String;)V

    iput v1, v8, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    move v0, v1

    move v3, v1

    move v2, v1

    :goto_0
    :pswitch_0
    iget v6, v8, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget v9, v8, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->length:I

    if-ge v6, v9, :cond_d

    if-nez v0, :cond_d

    iget-object v6, v8, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    iget v9, v8, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    move-result v6

    iput-char v6, v8, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    iget-char v6, v8, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    invoke-static {v6}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, v8, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    iget v9, v8, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v6, v9}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v6

    iget v9, v8, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v10

    add-int/2addr v9, v10

    iput v9, v8, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v6}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v6

    :cond_0
    :goto_1
    packed-switch v6, :pswitch_data_0

    :pswitch_1
    move v0, v2

    goto :goto_0

    :cond_1
    iget v6, v8, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v8, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget-char v6, v8, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    invoke-static {v6}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->getCachedDirectionality(C)B

    move-result v6

    iget-boolean v9, v8, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->isHtml:Z

    if-eqz v9, :cond_0

    iget-char v9, v8, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    if-ne v9, v13, :cond_7

    iget v6, v8, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    :cond_2
    :goto_2
    iget v9, v8, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget v10, v8, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->length:I

    if-ge v9, v10, :cond_6

    iget-object v9, v8, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    iget v10, v8, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v8, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    iput-char v9, v8, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    iget-char v9, v8, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v10, 0x3e

    if-ne v9, v10, :cond_3

    move v6, v7

    goto :goto_1

    :cond_3
    iget-char v9, v8, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v10, 0x22

    if-eq v9, v10, :cond_4

    iget-char v9, v8, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v10, 0x27

    if-ne v9, v10, :cond_2

    :cond_4
    iget-char v9, v8, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    :cond_5
    iget v10, v8, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget v11, v8, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->length:I

    if-ge v10, v11, :cond_2

    iget-object v10, v8, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    iget v11, v8, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v12, v11, 0x1

    iput v12, v8, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    iput-char v10, v8, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    if-ne v10, v9, :cond_5

    goto :goto_2

    :cond_6
    iput v6, v8, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iput-char v13, v8, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v6, 0xd

    goto :goto_1

    :cond_7
    iget-char v9, v8, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v10, 0x26

    if-ne v9, v10, :cond_0

    :cond_8
    iget v6, v8, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget v9, v8, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->length:I

    if-ge v6, v9, :cond_9

    iget-object v6, v8, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    iget v9, v8, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v8, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    move-result v6

    iput-char v6, v8, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v9, 0x3b

    if-ne v6, v9, :cond_8

    :cond_9
    move v6, v7

    goto/16 :goto_1

    :pswitch_2
    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto/16 :goto_0

    :pswitch_3
    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto/16 :goto_0

    :pswitch_4
    add-int/lit8 v2, v2, -0x1

    move v3, v1

    goto/16 :goto_0

    :pswitch_5
    if-nez v2, :cond_b

    :cond_a
    :goto_3
    return v4

    :cond_b
    move v0, v2

    goto/16 :goto_0

    :pswitch_6
    if-nez v2, :cond_c

    move v4, v5

    goto :goto_3

    :cond_c
    move v0, v2

    goto/16 :goto_0

    :cond_d
    if-eqz v0, :cond_10

    if-eqz v3, :cond_e

    move v4, v3

    goto :goto_3

    :cond_e
    :goto_4
    iget v3, v8, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v3, :cond_10

    invoke-virtual {v8}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->dirTypeBackward()B

    move-result v3

    packed-switch v3, :pswitch_data_1

    goto :goto_4

    :pswitch_7
    if-eq v0, v2, :cond_a

    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    :pswitch_8
    if-ne v0, v2, :cond_f

    move v4, v5

    goto :goto_3

    :cond_f
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    :pswitch_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_10
    move v4, v1

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xe
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private static getExitDir(Ljava/lang/String;)I
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 462
    new-instance v5, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;

    invoke-direct {v5, p0}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;-><init>(Ljava/lang/String;)V

    iget v0, v5, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->length:I

    iput v0, v5, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    move v0, v1

    move v2, v1

    :cond_0
    :goto_0
    :pswitch_0
    iget v6, v5, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v6, :cond_1

    invoke-virtual {v5}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->dirTypeBackward()B

    move-result v6

    packed-switch v6, :pswitch_data_0

    :pswitch_1
    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :pswitch_2
    if-nez v2, :cond_2

    move v1, v3

    :cond_1
    :goto_1
    return v1

    :cond_2
    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :pswitch_3
    if-ne v0, v2, :cond_3

    move v1, v3

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :pswitch_4
    if-nez v2, :cond_4

    move v1, v4

    goto :goto_1

    :cond_4
    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :pswitch_5
    if-ne v0, v2, :cond_5

    move v1, v4

    goto :goto_1

    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :pswitch_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private static getInstance()Landroid/support/v4/text/BidiFormatter;
    .locals 1

    .prologue
    .line 234
    new-instance v0, Landroid/support/v4/text/BidiFormatter$Builder;

    invoke-direct {v0}, Landroid/support/v4/text/BidiFormatter$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/support/v4/text/BidiFormatter$Builder;->build()Landroid/support/v4/text/BidiFormatter;

    move-result-object v0

    return-object v0
.end method

.method private static getInstance(Ljava/util/Locale;)Landroid/support/v4/text/BidiFormatter;
    .locals 1

    .prologue
    .line 252
    new-instance v0, Landroid/support/v4/text/BidiFormatter$Builder;

    invoke-direct {v0, p0}, Landroid/support/v4/text/BidiFormatter$Builder;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v0}, Landroid/support/v4/text/BidiFormatter$Builder;->build()Landroid/support/v4/text/BidiFormatter;

    move-result-object v0

    return-object v0
.end method

.method private static getInstance(Z)Landroid/support/v4/text/BidiFormatter;
    .locals 1

    .prologue
    .line 243
    new-instance v0, Landroid/support/v4/text/BidiFormatter$Builder;

    invoke-direct {v0, p0}, Landroid/support/v4/text/BidiFormatter$Builder;-><init>(Z)V

    invoke-virtual {v0}, Landroid/support/v4/text/BidiFormatter$Builder;->build()Landroid/support/v4/text/BidiFormatter;

    move-result-object v0

    return-object v0
.end method

.method private getStereoReset()Z
    .locals 1

    .prologue
    .line 278
    iget v0, p0, Landroid/support/v4/text/BidiFormatter;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRtl(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 343
    iget-object v0, p0, Landroid/support/v4/text/BidiFormatter;->mDefaultTextDirectionHeuristicCompat:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Landroid/support/v4/text/TextDirectionHeuristicCompat;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result v0

    return v0
.end method

.method private isRtlContext()Z
    .locals 1

    .prologue
    .line 270
    iget-boolean v0, p0, Landroid/support/v4/text/BidiFormatter;->mIsRtlContext:Z

    return v0
.end method

.method private static isRtlLocale(Ljava/util/Locale;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 437
    invoke-static {p0}, Landroid/support/v4/text/TextUtilsCompat;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private markAfter(Ljava/lang/String;Landroid/support/v4/text/TextDirectionHeuristicCompat;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 297
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-interface {p2, p1, v0, v1}, Landroid/support/v4/text/TextDirectionHeuristicCompat;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result v0

    .line 299
    iget-boolean v1, p0, Landroid/support/v4/text/BidiFormatter;->mIsRtlContext:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/support/v4/text/BidiFormatter;->getExitDir(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 300
    :cond_0
    sget-object v0, Landroid/support/v4/text/BidiFormatter;->LRM_STRING:Ljava/lang/String;

    .line 305
    :goto_0
    return-object v0

    .line 302
    :cond_1
    iget-boolean v1, p0, Landroid/support/v4/text/BidiFormatter;->mIsRtlContext:Z

    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/support/v4/text/BidiFormatter;->getExitDir(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 303
    :cond_2
    sget-object v0, Landroid/support/v4/text/BidiFormatter;->RLM_STRING:Ljava/lang/String;

    goto :goto_0

    .line 305
    :cond_3
    const-string v0, ""

    goto :goto_0
.end method

.method private markBefore(Ljava/lang/String;Landroid/support/v4/text/TextDirectionHeuristicCompat;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 324
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-interface {p2, p1, v0, v1}, Landroid/support/v4/text/TextDirectionHeuristicCompat;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result v0

    .line 326
    iget-boolean v1, p0, Landroid/support/v4/text/BidiFormatter;->mIsRtlContext:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/support/v4/text/BidiFormatter;->getEntryDir(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 327
    :cond_0
    sget-object v0, Landroid/support/v4/text/BidiFormatter;->LRM_STRING:Ljava/lang/String;

    .line 332
    :goto_0
    return-object v0

    .line 329
    :cond_1
    iget-boolean v1, p0, Landroid/support/v4/text/BidiFormatter;->mIsRtlContext:Z

    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/support/v4/text/BidiFormatter;->getEntryDir(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 330
    :cond_2
    sget-object v0, Landroid/support/v4/text/BidiFormatter;->RLM_STRING:Ljava/lang/String;

    goto :goto_0

    .line 332
    :cond_3
    const-string v0, ""

    goto :goto_0
.end method

.method private unicodeWrap(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 427
    iget-object v0, p0, Landroid/support/v4/text/BidiFormatter;->mDefaultTextDirectionHeuristicCompat:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v4/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/support/v4/text/TextDirectionHeuristicCompat;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private unicodeWrap(Ljava/lang/String;Landroid/support/v4/text/TextDirectionHeuristicCompat;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 403
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/support/v4/text/TextDirectionHeuristicCompat;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private unicodeWrap(Ljava/lang/String;Landroid/support/v4/text/TextDirectionHeuristicCompat;Z)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 374
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-interface {p2, p1, v2, v0}, Landroid/support/v4/text/TextDirectionHeuristicCompat;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result v3

    .line 375
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 376
    iget v0, p0, Landroid/support/v4/text/BidiFormatter;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    .line 377
    if-eqz v3, :cond_5

    sget-object v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->RTL:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-interface {v0, p1, v2, v5}, Landroid/support/v4/text/TextDirectionHeuristicCompat;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result v0

    iget-boolean v5, p0, Landroid/support/v4/text/BidiFormatter;->mIsRtlContext:Z

    if-nez v5, :cond_6

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/support/v4/text/BidiFormatter;->getEntryDir(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v1, :cond_6

    :cond_0
    sget-object v0, Landroid/support/v4/text/BidiFormatter;->LRM_STRING:Ljava/lang/String;

    :goto_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    :cond_1
    iget-boolean v0, p0, Landroid/support/v4/text/BidiFormatter;->mIsRtlContext:Z

    if-eq v3, v0, :cond_a

    .line 381
    if-eqz v3, :cond_9

    const/16 v0, 0x202b

    :goto_3
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 382
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    const/16 v0, 0x202c

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 387
    :goto_4
    if-eqz p3, :cond_3

    .line 388
    if-eqz v3, :cond_b

    sget-object v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->RTL:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    :goto_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-interface {v0, p1, v2, v3}, Landroid/support/v4/text/TextDirectionHeuristicCompat;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result v0

    iget-boolean v2, p0, Landroid/support/v4/text/BidiFormatter;->mIsRtlContext:Z

    if-nez v2, :cond_c

    if-nez v0, :cond_2

    invoke-static {p1}, Landroid/support/v4/text/BidiFormatter;->getExitDir(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v1, :cond_c

    :cond_2
    sget-object v0, Landroid/support/v4/text/BidiFormatter;->LRM_STRING:Ljava/lang/String;

    :goto_6
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    move v0, v2

    .line 376
    goto :goto_0

    .line 377
    :cond_5
    sget-object v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->LTR:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    goto :goto_1

    :cond_6
    iget-boolean v5, p0, Landroid/support/v4/text/BidiFormatter;->mIsRtlContext:Z

    if-eqz v5, :cond_8

    if-eqz v0, :cond_7

    invoke-static {p1}, Landroid/support/v4/text/BidiFormatter;->getEntryDir(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v6, :cond_8

    :cond_7
    sget-object v0, Landroid/support/v4/text/BidiFormatter;->RLM_STRING:Ljava/lang/String;

    goto :goto_2

    :cond_8
    const-string v0, ""

    goto :goto_2

    .line 381
    :cond_9
    const/16 v0, 0x202a

    goto :goto_3

    .line 385
    :cond_a
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 388
    :cond_b
    sget-object v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->LTR:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    goto :goto_5

    :cond_c
    iget-boolean v1, p0, Landroid/support/v4/text/BidiFormatter;->mIsRtlContext:Z

    if-eqz v1, :cond_e

    if-eqz v0, :cond_d

    invoke-static {p1}, Landroid/support/v4/text/BidiFormatter;->getExitDir(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v6, :cond_e

    :cond_d
    sget-object v0, Landroid/support/v4/text/BidiFormatter;->RLM_STRING:Ljava/lang/String;

    goto :goto_6

    :cond_e
    const-string v0, ""

    goto :goto_6
.end method

.method private unicodeWrap(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Landroid/support/v4/text/BidiFormatter;->mDefaultTextDirectionHeuristicCompat:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    invoke-direct {p0, p1, v0, p2}, Landroid/support/v4/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/support/v4/text/TextDirectionHeuristicCompat;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
