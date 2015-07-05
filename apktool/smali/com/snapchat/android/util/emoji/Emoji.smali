.class public final enum Lcom/snapchat/android/util/emoji/Emoji;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/util/emoji/Emoji;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/util/emoji/Emoji;

.field public static final enum CLAPPING_HANDS_SIGN:Lcom/snapchat/android/util/emoji/Emoji;

.field public static final enum CONFUSED_FACE:Lcom/snapchat/android/util/emoji/Emoji;

.field public static final enum DISAPPOINTED_FACE:Lcom/snapchat/android/util/emoji/Emoji;

.field public static final enum FIRE:Lcom/snapchat/android/util/emoji/Emoji;

.field public static final enum FLUSHED_FACE:Lcom/snapchat/android/util/emoji/Emoji;

.field public static final enum GHOST:Lcom/snapchat/android/util/emoji/Emoji;

.field public static final enum GRINNING_FACE_WITH_SMILING_EYES:Lcom/snapchat/android/util/emoji/Emoji;

.field public static final enum HAPPY_PERSON_RAISING_ONE_HAND:Lcom/snapchat/android/util/emoji/Emoji;

.field public static final enum HEAVY_BLACK_HEART:Lcom/snapchat/android/util/emoji/Emoji;

.field public static final enum OK_HAND_SIGN:Lcom/snapchat/android/util/emoji/Emoji;

.field public static final enum SEE_NO_EVIL_MONKEY:Lcom/snapchat/android/util/emoji/Emoji;

.field public static final enum SMILING_FACE_WITH_SMILING_EYES:Lcom/snapchat/android/util/emoji/Emoji;

.field public static final enum SMILING_FACE_WITH_SUNGLASSES:Lcom/snapchat/android/util/emoji/Emoji;

.field public static final enum SMIRKING_FACE:Lcom/snapchat/android/util/emoji/Emoji;

.field public static final enum THUMBS_DOWN_SIGN:Lcom/snapchat/android/util/emoji/Emoji;

.field public static final enum THUMBS_UP_SIGN:Lcom/snapchat/android/util/emoji/Emoji;

.field public static final enum WHITE_MEDIUM_STAR:Lcom/snapchat/android/util/emoji/Emoji;

.field public static final enum YELLOW_HEART:Lcom/snapchat/android/util/emoji/Emoji;


# instance fields
.field private final mBytes:[B

.field private final mUnicode:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x4

    .line 9
    new-instance v0, Lcom/snapchat/android/util/emoji/Emoji;

    const-string v1, "OK_HAND_SIGN"

    const v2, 0x1f44c

    new-array v3, v5, [B

    fill-array-data v3, :array_0

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/snapchat/android/util/emoji/Emoji;-><init>(Ljava/lang/String;II[B)V

    sput-object v0, Lcom/snapchat/android/util/emoji/Emoji;->OK_HAND_SIGN:Lcom/snapchat/android/util/emoji/Emoji;

    .line 11
    new-instance v0, Lcom/snapchat/android/util/emoji/Emoji;

    const-string v1, "THUMBS_UP_SIGN"

    const v2, 0x1f44d

    new-array v3, v5, [B

    fill-array-data v3, :array_1

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/snapchat/android/util/emoji/Emoji;-><init>(Ljava/lang/String;II[B)V

    sput-object v0, Lcom/snapchat/android/util/emoji/Emoji;->THUMBS_UP_SIGN:Lcom/snapchat/android/util/emoji/Emoji;

    .line 13
    new-instance v0, Lcom/snapchat/android/util/emoji/Emoji;

    const-string v1, "THUMBS_DOWN_SIGN"

    const v2, 0x1f44e

    new-array v3, v5, [B

    fill-array-data v3, :array_2

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/snapchat/android/util/emoji/Emoji;-><init>(Ljava/lang/String;II[B)V

    sput-object v0, Lcom/snapchat/android/util/emoji/Emoji;->THUMBS_DOWN_SIGN:Lcom/snapchat/android/util/emoji/Emoji;

    .line 15
    new-instance v0, Lcom/snapchat/android/util/emoji/Emoji;

    const-string v1, "CLAPPING_HANDS_SIGN"

    const v2, 0x1f44f

    new-array v3, v5, [B

    fill-array-data v3, :array_3

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/snapchat/android/util/emoji/Emoji;-><init>(Ljava/lang/String;II[B)V

    sput-object v0, Lcom/snapchat/android/util/emoji/Emoji;->CLAPPING_HANDS_SIGN:Lcom/snapchat/android/util/emoji/Emoji;

    .line 19
    new-instance v0, Lcom/snapchat/android/util/emoji/Emoji;

    const-string v1, "GHOST"

    const v2, 0x1f47b

    new-array v3, v5, [B

    fill-array-data v3, :array_4

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/snapchat/android/util/emoji/Emoji;-><init>(Ljava/lang/String;II[B)V

    sput-object v0, Lcom/snapchat/android/util/emoji/Emoji;->GHOST:Lcom/snapchat/android/util/emoji/Emoji;

    .line 22
    new-instance v0, Lcom/snapchat/android/util/emoji/Emoji;

    const-string v1, "YELLOW_HEART"

    const/4 v2, 0x5

    const v3, 0x1f49b

    new-array v4, v5, [B

    fill-array-data v4, :array_5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/snapchat/android/util/emoji/Emoji;-><init>(Ljava/lang/String;II[B)V

    sput-object v0, Lcom/snapchat/android/util/emoji/Emoji;->YELLOW_HEART:Lcom/snapchat/android/util/emoji/Emoji;

    .line 24
    new-instance v0, Lcom/snapchat/android/util/emoji/Emoji;

    const-string v1, "FIRE"

    const/4 v2, 0x6

    const v3, 0x1f525

    new-array v4, v5, [B

    fill-array-data v4, :array_6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/snapchat/android/util/emoji/Emoji;-><init>(Ljava/lang/String;II[B)V

    sput-object v0, Lcom/snapchat/android/util/emoji/Emoji;->FIRE:Lcom/snapchat/android/util/emoji/Emoji;

    .line 28
    new-instance v0, Lcom/snapchat/android/util/emoji/Emoji;

    const-string v1, "GRINNING_FACE_WITH_SMILING_EYES"

    const/4 v2, 0x7

    const v3, 0x1f601

    new-array v4, v5, [B

    fill-array-data v4, :array_7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/snapchat/android/util/emoji/Emoji;-><init>(Ljava/lang/String;II[B)V

    sput-object v0, Lcom/snapchat/android/util/emoji/Emoji;->GRINNING_FACE_WITH_SMILING_EYES:Lcom/snapchat/android/util/emoji/Emoji;

    .line 30
    new-instance v0, Lcom/snapchat/android/util/emoji/Emoji;

    const-string v1, "SMILING_FACE_WITH_SMILING_EYES"

    const/16 v2, 0x8

    const v3, 0x1f60a

    new-array v4, v5, [B

    fill-array-data v4, :array_8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/snapchat/android/util/emoji/Emoji;-><init>(Ljava/lang/String;II[B)V

    sput-object v0, Lcom/snapchat/android/util/emoji/Emoji;->SMILING_FACE_WITH_SMILING_EYES:Lcom/snapchat/android/util/emoji/Emoji;

    .line 32
    new-instance v0, Lcom/snapchat/android/util/emoji/Emoji;

    const-string v1, "SMILING_FACE_WITH_SUNGLASSES"

    const/16 v2, 0x9

    const v3, 0x1f60e

    new-array v4, v5, [B

    fill-array-data v4, :array_9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/snapchat/android/util/emoji/Emoji;-><init>(Ljava/lang/String;II[B)V

    sput-object v0, Lcom/snapchat/android/util/emoji/Emoji;->SMILING_FACE_WITH_SUNGLASSES:Lcom/snapchat/android/util/emoji/Emoji;

    .line 34
    new-instance v0, Lcom/snapchat/android/util/emoji/Emoji;

    const-string v1, "SMIRKING_FACE"

    const/16 v2, 0xa

    const v3, 0x1f60f

    new-array v4, v5, [B

    fill-array-data v4, :array_a

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/snapchat/android/util/emoji/Emoji;-><init>(Ljava/lang/String;II[B)V

    sput-object v0, Lcom/snapchat/android/util/emoji/Emoji;->SMIRKING_FACE:Lcom/snapchat/android/util/emoji/Emoji;

    .line 36
    new-instance v0, Lcom/snapchat/android/util/emoji/Emoji;

    const-string v1, "CONFUSED_FACE"

    const/16 v2, 0xb

    const v3, 0x1f615

    new-array v4, v5, [B

    fill-array-data v4, :array_b

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/snapchat/android/util/emoji/Emoji;-><init>(Ljava/lang/String;II[B)V

    sput-object v0, Lcom/snapchat/android/util/emoji/Emoji;->CONFUSED_FACE:Lcom/snapchat/android/util/emoji/Emoji;

    .line 38
    new-instance v0, Lcom/snapchat/android/util/emoji/Emoji;

    const-string v1, "DISAPPOINTED_FACE"

    const/16 v2, 0xc

    const v3, 0x1f61e

    new-array v4, v5, [B

    fill-array-data v4, :array_c

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/snapchat/android/util/emoji/Emoji;-><init>(Ljava/lang/String;II[B)V

    sput-object v0, Lcom/snapchat/android/util/emoji/Emoji;->DISAPPOINTED_FACE:Lcom/snapchat/android/util/emoji/Emoji;

    .line 40
    new-instance v0, Lcom/snapchat/android/util/emoji/Emoji;

    const-string v1, "FLUSHED_FACE"

    const/16 v2, 0xd

    const v3, 0x1f633

    new-array v4, v5, [B

    fill-array-data v4, :array_d

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/snapchat/android/util/emoji/Emoji;-><init>(Ljava/lang/String;II[B)V

    sput-object v0, Lcom/snapchat/android/util/emoji/Emoji;->FLUSHED_FACE:Lcom/snapchat/android/util/emoji/Emoji;

    .line 43
    new-instance v0, Lcom/snapchat/android/util/emoji/Emoji;

    const-string v1, "SEE_NO_EVIL_MONKEY"

    const/16 v2, 0xe

    const v3, 0x1f648

    new-array v4, v5, [B

    fill-array-data v4, :array_e

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/snapchat/android/util/emoji/Emoji;-><init>(Ljava/lang/String;II[B)V

    sput-object v0, Lcom/snapchat/android/util/emoji/Emoji;->SEE_NO_EVIL_MONKEY:Lcom/snapchat/android/util/emoji/Emoji;

    .line 45
    new-instance v0, Lcom/snapchat/android/util/emoji/Emoji;

    const-string v1, "HAPPY_PERSON_RAISING_ONE_HAND"

    const/16 v2, 0xf

    const v3, 0x1f64b

    new-array v4, v5, [B

    fill-array-data v4, :array_f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/snapchat/android/util/emoji/Emoji;-><init>(Ljava/lang/String;II[B)V

    sput-object v0, Lcom/snapchat/android/util/emoji/Emoji;->HAPPY_PERSON_RAISING_ONE_HAND:Lcom/snapchat/android/util/emoji/Emoji;

    .line 49
    new-instance v0, Lcom/snapchat/android/util/emoji/Emoji;

    const-string v1, "HEAVY_BLACK_HEART"

    const/16 v2, 0x10

    const/16 v3, 0x2764

    new-array v4, v6, [B

    fill-array-data v4, :array_10

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/snapchat/android/util/emoji/Emoji;-><init>(Ljava/lang/String;II[B)V

    sput-object v0, Lcom/snapchat/android/util/emoji/Emoji;->HEAVY_BLACK_HEART:Lcom/snapchat/android/util/emoji/Emoji;

    .line 51
    new-instance v0, Lcom/snapchat/android/util/emoji/Emoji;

    const-string v1, "WHITE_MEDIUM_STAR"

    const/16 v2, 0x11

    const/16 v3, 0x2b50

    new-array v4, v6, [B

    fill-array-data v4, :array_11

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/snapchat/android/util/emoji/Emoji;-><init>(Ljava/lang/String;II[B)V

    sput-object v0, Lcom/snapchat/android/util/emoji/Emoji;->WHITE_MEDIUM_STAR:Lcom/snapchat/android/util/emoji/Emoji;

    .line 6
    const/16 v0, 0x12

    new-array v0, v0, [Lcom/snapchat/android/util/emoji/Emoji;

    sget-object v1, Lcom/snapchat/android/util/emoji/Emoji;->OK_HAND_SIGN:Lcom/snapchat/android/util/emoji/Emoji;

    aput-object v1, v0, v7

    sget-object v1, Lcom/snapchat/android/util/emoji/Emoji;->THUMBS_UP_SIGN:Lcom/snapchat/android/util/emoji/Emoji;

    aput-object v1, v0, v8

    sget-object v1, Lcom/snapchat/android/util/emoji/Emoji;->THUMBS_DOWN_SIGN:Lcom/snapchat/android/util/emoji/Emoji;

    aput-object v1, v0, v9

    sget-object v1, Lcom/snapchat/android/util/emoji/Emoji;->CLAPPING_HANDS_SIGN:Lcom/snapchat/android/util/emoji/Emoji;

    aput-object v1, v0, v6

    sget-object v1, Lcom/snapchat/android/util/emoji/Emoji;->GHOST:Lcom/snapchat/android/util/emoji/Emoji;

    aput-object v1, v0, v5

    const/4 v1, 0x5

    sget-object v2, Lcom/snapchat/android/util/emoji/Emoji;->YELLOW_HEART:Lcom/snapchat/android/util/emoji/Emoji;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/snapchat/android/util/emoji/Emoji;->FIRE:Lcom/snapchat/android/util/emoji/Emoji;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/snapchat/android/util/emoji/Emoji;->GRINNING_FACE_WITH_SMILING_EYES:Lcom/snapchat/android/util/emoji/Emoji;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/snapchat/android/util/emoji/Emoji;->SMILING_FACE_WITH_SMILING_EYES:Lcom/snapchat/android/util/emoji/Emoji;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/snapchat/android/util/emoji/Emoji;->SMILING_FACE_WITH_SUNGLASSES:Lcom/snapchat/android/util/emoji/Emoji;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/snapchat/android/util/emoji/Emoji;->SMIRKING_FACE:Lcom/snapchat/android/util/emoji/Emoji;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/snapchat/android/util/emoji/Emoji;->CONFUSED_FACE:Lcom/snapchat/android/util/emoji/Emoji;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/snapchat/android/util/emoji/Emoji;->DISAPPOINTED_FACE:Lcom/snapchat/android/util/emoji/Emoji;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/snapchat/android/util/emoji/Emoji;->FLUSHED_FACE:Lcom/snapchat/android/util/emoji/Emoji;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/snapchat/android/util/emoji/Emoji;->SEE_NO_EVIL_MONKEY:Lcom/snapchat/android/util/emoji/Emoji;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/snapchat/android/util/emoji/Emoji;->HAPPY_PERSON_RAISING_ONE_HAND:Lcom/snapchat/android/util/emoji/Emoji;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/snapchat/android/util/emoji/Emoji;->HEAVY_BLACK_HEART:Lcom/snapchat/android/util/emoji/Emoji;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/snapchat/android/util/emoji/Emoji;->WHITE_MEDIUM_STAR:Lcom/snapchat/android/util/emoji/Emoji;

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/util/emoji/Emoji;->$VALUES:[Lcom/snapchat/android/util/emoji/Emoji;

    return-void

    .line 9
    :array_0
    .array-data 1
        -0x10t
        -0x61t
        -0x6ft
        -0x74t
    .end array-data

    .line 11
    :array_1
    .array-data 1
        -0x10t
        -0x61t
        -0x6ft
        -0x73t
    .end array-data

    .line 13
    :array_2
    .array-data 1
        -0x10t
        -0x61t
        -0x6ft
        -0x72t
    .end array-data

    .line 15
    :array_3
    .array-data 1
        -0x10t
        -0x61t
        -0x6ft
        -0x71t
    .end array-data

    .line 19
    :array_4
    .array-data 1
        -0x10t
        -0x61t
        -0x6ft
        -0x45t
    .end array-data

    .line 22
    :array_5
    .array-data 1
        -0x10t
        -0x61t
        -0x6et
        -0x65t
    .end array-data

    .line 24
    :array_6
    .array-data 1
        -0x10t
        -0x61t
        -0x6ct
        -0x5bt
    .end array-data

    .line 28
    :array_7
    .array-data 1
        -0x10t
        -0x61t
        -0x68t
        -0x7ft
    .end array-data

    .line 30
    :array_8
    .array-data 1
        -0x10t
        -0x61t
        -0x68t
        -0x76t
    .end array-data

    .line 32
    :array_9
    .array-data 1
        -0x10t
        -0x61t
        -0x68t
        -0x72t
    .end array-data

    .line 34
    :array_a
    .array-data 1
        -0x10t
        -0x61t
        -0x68t
        -0x71t
    .end array-data

    .line 36
    :array_b
    .array-data 1
        -0x10t
        -0x61t
        -0x68t
        -0x6bt
    .end array-data

    .line 38
    :array_c
    .array-data 1
        -0x10t
        -0x61t
        -0x68t
        -0x62t
    .end array-data

    .line 40
    :array_d
    .array-data 1
        -0x10t
        -0x61t
        -0x68t
        -0x4dt
    .end array-data

    .line 43
    :array_e
    .array-data 1
        -0x10t
        -0x61t
        -0x67t
        -0x78t
    .end array-data

    .line 45
    :array_f
    .array-data 1
        -0x10t
        -0x61t
        -0x67t
        -0x75t
    .end array-data

    .line 49
    :array_10
    .array-data 1
        -0x1et
        -0x63t
        -0x5ct
    .end array-data

    .line 51
    :array_11
    .array-data 1
        -0x1et
        -0x53t
        -0x70t
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;II[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[B)V"
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 63
    iput p3, p0, Lcom/snapchat/android/util/emoji/Emoji;->mUnicode:I

    .line 64
    iput-object p4, p0, Lcom/snapchat/android/util/emoji/Emoji;->mBytes:[B

    .line 65
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/util/emoji/Emoji;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/snapchat/android/util/emoji/Emoji;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/emoji/Emoji;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/util/emoji/Emoji;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/snapchat/android/util/emoji/Emoji;->$VALUES:[Lcom/snapchat/android/util/emoji/Emoji;

    invoke-virtual {v0}, [Lcom/snapchat/android/util/emoji/Emoji;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/util/emoji/Emoji;

    return-object v0
.end method


# virtual methods
.method public final getBytes()[B
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/snapchat/android/util/emoji/Emoji;->mBytes:[B

    return-object v0
.end method

.method public final getUnicode()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/snapchat/android/util/emoji/Emoji;->mUnicode:I

    return v0
.end method
