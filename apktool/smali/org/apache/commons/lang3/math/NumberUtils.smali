.class public Lorg/apache/commons/lang3/math/NumberUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BYTE_MINUS_ONE:Ljava/lang/Byte;

.field public static final BYTE_ONE:Ljava/lang/Byte;

.field public static final BYTE_ZERO:Ljava/lang/Byte;

.field public static final DOUBLE_MINUS_ONE:Ljava/lang/Double;

.field public static final DOUBLE_ONE:Ljava/lang/Double;

.field public static final DOUBLE_ZERO:Ljava/lang/Double;

.field public static final FLOAT_MINUS_ONE:Ljava/lang/Float;

.field public static final FLOAT_ONE:Ljava/lang/Float;

.field public static final FLOAT_ZERO:Ljava/lang/Float;

.field public static final INTEGER_MINUS_ONE:Ljava/lang/Integer;

.field public static final INTEGER_ONE:Ljava/lang/Integer;

.field public static final INTEGER_ZERO:Ljava/lang/Integer;

.field public static final LONG_MINUS_ONE:Ljava/lang/Long;

.field public static final LONG_ONE:Ljava/lang/Long;

.field public static final LONG_ZERO:Ljava/lang/Long;

.field public static final SHORT_MINUS_ONE:Ljava/lang/Short;

.field public static final SHORT_ONE:Ljava/lang/Short;

.field public static final SHORT_ZERO:Ljava/lang/Short;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 34
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->LONG_ZERO:Ljava/lang/Long;

    .line 36
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->LONG_ONE:Ljava/lang/Long;

    .line 38
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->LONG_MINUS_ONE:Ljava/lang/Long;

    .line 40
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_ZERO:Ljava/lang/Integer;

    .line 42
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_ONE:Ljava/lang/Integer;

    .line 44
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_MINUS_ONE:Ljava/lang/Integer;

    .line 46
    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->SHORT_ZERO:Ljava/lang/Short;

    .line 48
    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->SHORT_ONE:Ljava/lang/Short;

    .line 50
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->SHORT_MINUS_ONE:Ljava/lang/Short;

    .line 52
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->BYTE_ZERO:Ljava/lang/Byte;

    .line 54
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->BYTE_ONE:Ljava/lang/Byte;

    .line 56
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->BYTE_MINUS_ONE:Ljava/lang/Byte;

    .line 58
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->DOUBLE_ZERO:Ljava/lang/Double;

    .line 60
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->DOUBLE_ONE:Ljava/lang/Double;

    .line 62
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->DOUBLE_MINUS_ONE:Ljava/lang/Double;

    .line 64
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->FLOAT_ZERO:Ljava/lang/Float;

    .line 66
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->FLOAT_ONE:Ljava/lang/Float;

    .line 68
    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->FLOAT_MINUS_ONE:Ljava/lang/Float;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    return-void
.end method

.method public static createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    .locals 3

    .prologue
    .line 761
    if-nez p0, :cond_0

    .line 762
    const/4 v0, 0x0

    .line 775
    :goto_0
    return-object v0

    .line 765
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 766
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "A blank string is not a valid number"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 768
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 773
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid number."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 775
    :cond_2
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static createBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 6

    .prologue
    const/16 v2, 0x10

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 726
    if-nez p0, :cond_0

    .line 727
    const/4 v0, 0x0

    .line 748
    :goto_0
    return-object v0

    .line 730
    :cond_0
    const/16 v3, 0xa

    .line 732
    const-string v4, "-"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    move v1, v0

    .line 736
    :goto_1
    const-string v4, "0x"

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "0x"

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 738
    :cond_1
    add-int/lit8 v1, v1, 0x2

    move v5, v2

    move v2, v1

    move v1, v5

    .line 747
    :goto_2
    new-instance v3, Ljava/math/BigInteger;

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 748
    if-eqz v0, :cond_4

    invoke-virtual {v3}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0

    .line 739
    :cond_2
    const-string v4, "#"

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 741
    add-int/lit8 v1, v1, 0x1

    move v5, v2

    move v2, v1

    move v1, v5

    goto :goto_2

    .line 742
    :cond_3
    const-string v2, "0"

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v4, v1, 0x1

    if-le v2, v4, :cond_5

    .line 743
    const/16 v2, 0x8

    .line 744
    add-int/lit8 v1, v1, 0x1

    move v5, v2

    move v2, v1

    move v1, v5

    goto :goto_2

    :cond_4
    move-object v0, v3

    .line 748
    goto :goto_0

    :cond_5
    move v2, v1

    move v1, v3

    goto :goto_2

    :cond_6
    move v0, v1

    goto :goto_1
.end method

.method public static createDouble(Ljava/lang/String;)Ljava/lang/Double;
    .locals 1

    .prologue
    .line 672
    if-nez p0, :cond_0

    .line 673
    const/4 v0, 0x0

    .line 675
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0
.end method

.method public static createFloat(Ljava/lang/String;)Ljava/lang/Float;
    .locals 1

    .prologue
    .line 656
    if-nez p0, :cond_0

    .line 657
    const/4 v0, 0x0

    .line 659
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0
.end method

.method public static createInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 690
    if-nez p0, :cond_0

    .line 691
    const/4 v0, 0x0

    .line 694
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public static createLong(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1

    .prologue
    .line 709
    if-nez p0, :cond_0

    .line 710
    const/4 v0, 0x0

    .line 712
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method public static createNumber(Ljava/lang/String;)Ljava/lang/Number;
    .locals 13

    .prologue
    const-wide/16 v10, 0x0

    const/16 v9, 0x10

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 451
    if-nez p0, :cond_1

    .line 622
    :cond_0
    :goto_0
    return-object v3

    .line 454
    :cond_1
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 455
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "A blank string is not a valid number"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 458
    :cond_2
    const/4 v0, 0x6

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "0x"

    aput-object v0, v2, v1

    const-string v0, "0X"

    aput-object v0, v2, v5

    const/4 v0, 0x2

    const-string v4, "-0x"

    aput-object v4, v2, v0

    const/4 v0, 0x3

    const-string v4, "-0X"

    aput-object v4, v2, v0

    const/4 v0, 0x4

    const-string v4, "#"

    aput-object v4, v2, v0

    const/4 v0, 0x5

    const-string v4, "-#"

    aput-object v4, v2, v0

    move v0, v1

    .line 460
    :goto_1
    const/4 v4, 0x6

    if-ge v0, v4, :cond_1d

    aget-object v4, v2, v0

    .line 461
    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 462
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 466
    :goto_2
    if-lez v0, :cond_9

    move v2, v1

    move v1, v0

    .line 468
    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 469
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 470
    const/16 v3, 0x30

    if-ne v2, v3, :cond_4

    .line 471
    add-int/lit8 v1, v1, 0x1

    .line 468
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 460
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 476
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    .line 477
    if-gt v0, v9, :cond_5

    if-ne v0, v9, :cond_6

    const/16 v1, 0x37

    if-le v2, v1, :cond_6

    .line 478
    :cond_5
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v3

    goto :goto_0

    .line 480
    :cond_6
    const/16 v1, 0x8

    if-gt v0, v1, :cond_7

    const/16 v1, 0x8

    if-ne v0, v1, :cond_8

    const/16 v0, 0x37

    if-le v2, v0, :cond_8

    .line 481
    :cond_7
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    goto :goto_0

    .line 483
    :cond_8
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    goto/16 :goto_0

    .line 485
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 489
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 490
    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/16 v4, 0x45

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v7, v0, 0x1

    .line 495
    if-ltz v2, :cond_e

    .line 497
    if-ltz v7, :cond_d

    .line 498
    if-lt v7, v2, :cond_a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v7, v0, :cond_b

    .line 499
    :cond_a
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid number."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 501
    :cond_b
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 505
    :goto_4
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 506
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    move v12, v2

    move-object v2, v0

    move v0, v12

    .line 518
    :goto_5
    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-nez v8, :cond_17

    const/16 v8, 0x2e

    if-eq v6, v8, :cond_17

    .line 519
    if-ltz v7, :cond_c

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v7, v0, :cond_c

    .line 520
    add-int/lit8 v0, v7, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 525
    :cond_c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 526
    invoke-static {v4}, Lorg/apache/commons/lang3/math/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {v3}, Lorg/apache/commons/lang3/math/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    move v0, v5

    .line 527
    :goto_6
    sparse-switch v6, :sswitch_data_0

    .line 573
    :goto_7
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid number."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 503
    :cond_d
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 508
    :cond_e
    if-ltz v7, :cond_10

    .line 509
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v7, v0, :cond_f

    .line 510
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid number."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 512
    :cond_f
    invoke-virtual {p0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_8
    move-object v2, v3

    move-object v4, v0

    move v0, v1

    .line 516
    goto/16 :goto_5

    :cond_10
    move-object v0, p0

    .line 514
    goto :goto_8

    :cond_11
    move v0, v1

    .line 526
    goto :goto_6

    .line 530
    :sswitch_0
    if-nez v2, :cond_14

    if-nez v3, :cond_14

    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_12

    invoke-virtual {v7, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/math/NumberUtils;->isDigits(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    :cond_12
    invoke-static {v7}, Lorg/apache/commons/lang3/math/NumberUtils;->isDigits(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 534
    :cond_13
    :try_start_0
    invoke-static {v7}, Lorg/apache/commons/lang3/math/NumberUtils;->createLong(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto/16 :goto_0

    .line 538
    :catch_0
    move-exception v0

    invoke-static {v7}, Lorg/apache/commons/lang3/math/NumberUtils;->createBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v3

    goto/16 :goto_0

    .line 541
    :cond_14
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid number."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 545
    :sswitch_1
    :try_start_1
    invoke-static {v7}, Lorg/apache/commons/lang3/math/NumberUtils;->createFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    .line 546
    invoke-virtual {v3}, Ljava/lang/Float;->isInfinite()Z

    move-result v1

    if-nez v1, :cond_15

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_7

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    .line 559
    :cond_15
    :goto_9
    :sswitch_2
    :try_start_2
    invoke-static {v7}, Lorg/apache/commons/lang3/math/NumberUtils;->createDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    .line 560
    invoke-virtual {v3}, Ljava/lang/Double;->isInfinite()Z

    move-result v1

    if-nez v1, :cond_16

    invoke-virtual {v3}, Ljava/lang/Double;->floatValue()F
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_6

    move-result v1

    float-to-double v4, v1

    cmpl-double v1, v4, v10

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    .line 567
    :cond_16
    :goto_a
    :try_start_3
    invoke-static {v7}, Lorg/apache/commons/lang3/math/NumberUtils;->createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v3

    goto/16 :goto_0

    .line 579
    :cond_17
    if-ltz v7, :cond_18

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v7, v6, :cond_18

    .line 580
    add-int/lit8 v3, v7, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 584
    :cond_18
    if-nez v2, :cond_19

    if-nez v3, :cond_19

    .line 587
    :try_start_4
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createInteger(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v3

    goto/16 :goto_0

    :catch_1
    move-exception v0

    .line 592
    :try_start_5
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createLong(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v3

    goto/16 :goto_0

    .line 596
    :catch_2
    move-exception v0

    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v3

    goto/16 :goto_0

    .line 600
    :cond_19
    invoke-static {v4}, Lorg/apache/commons/lang3/math/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-static {v3}, Lorg/apache/commons/lang3/math/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    move v1, v5

    .line 602
    :cond_1a
    const/4 v2, 0x7

    if-gt v0, v2, :cond_1b

    .line 603
    :try_start_6
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    .line 604
    invoke-virtual {v3}, Ljava/lang/Float;->isInfinite()Z

    move-result v2

    if-nez v2, :cond_1b

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_5

    move-result v2

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-nez v2, :cond_0

    if-nez v1, :cond_0

    .line 612
    :cond_1b
    :goto_b
    if-gt v0, v9, :cond_1c

    .line 613
    :try_start_7
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    .line 614
    invoke-virtual {v3}, Ljava/lang/Double;->isInfinite()Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_4

    move-result-wide v4

    cmpl-double v0, v4, v10

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 622
    :cond_1c
    :goto_c
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v3

    goto/16 :goto_0

    :catch_3
    move-exception v0

    goto/16 :goto_7

    :catch_4
    move-exception v0

    goto :goto_c

    :catch_5
    move-exception v2

    goto :goto_b

    :catch_6
    move-exception v0

    goto :goto_a

    :catch_7
    move-exception v1

    goto/16 :goto_9

    :cond_1d
    move v0, v1

    goto/16 :goto_2

    .line 527
    nop

    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_2
        0x46 -> :sswitch_1
        0x4c -> :sswitch_0
        0x64 -> :sswitch_2
        0x66 -> :sswitch_1
        0x6c -> :sswitch_0
    .end sparse-switch
.end method

.method private static isAllZeros(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 634
    if-nez p0, :cond_1

    .line 642
    :cond_0
    :goto_0
    return v0

    .line 637
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_3

    .line 638
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-eq v3, v4, :cond_2

    move v0, v1

    .line 639
    goto :goto_0

    .line 637
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 642
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static isDigits(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1312
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1320
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    .line 1315
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1316
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1315
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1320
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isNumber(Ljava/lang/String;)Z
    .locals 14

    .prologue
    const/16 v13, 0x2d

    const/16 v12, 0x39

    const/16 v11, 0x30

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1338
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1450
    :cond_0
    :goto_0
    return v2

    .line 1341
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    .line 1342
    array-length v3, v7

    .line 1348
    aget-char v0, v7, v2

    if-ne v0, v13, :cond_6

    move v0, v1

    .line 1349
    :goto_1
    add-int/lit8 v4, v0, 0x1

    if-le v3, v4, :cond_a

    aget-char v4, v7, v0

    if-ne v4, v11, :cond_a

    .line 1350
    add-int/lit8 v4, v0, 0x1

    aget-char v4, v7, v4

    const/16 v5, 0x78

    if-eq v4, v5, :cond_2

    add-int/lit8 v4, v0, 0x1

    aget-char v4, v7, v4

    const/16 v5, 0x58

    if-ne v4, v5, :cond_8

    .line 1354
    :cond_2
    add-int/lit8 v0, v0, 0x2

    .line 1355
    if-eq v0, v3, :cond_0

    .line 1359
    :goto_2
    array-length v3, v7

    if-ge v0, v3, :cond_7

    .line 1360
    aget-char v3, v7, v0

    if-lt v3, v11, :cond_3

    aget-char v3, v7, v0

    if-le v3, v12, :cond_5

    :cond_3
    aget-char v3, v7, v0

    const/16 v4, 0x61

    if-lt v3, v4, :cond_4

    aget-char v3, v7, v0

    const/16 v4, 0x66

    if-le v3, v4, :cond_5

    :cond_4
    aget-char v3, v7, v0

    const/16 v4, 0x41

    if-lt v3, v4, :cond_0

    aget-char v3, v7, v0

    const/16 v4, 0x46

    if-gt v3, v4, :cond_0

    .line 1359
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    move v0, v2

    .line 1348
    goto :goto_1

    :cond_7
    move v2, v1

    .line 1366
    goto :goto_0

    .line 1367
    :cond_8
    add-int/lit8 v4, v0, 0x1

    aget-char v4, v7, v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1369
    add-int/lit8 v0, v0, 0x1

    .line 1370
    :goto_3
    array-length v3, v7

    if-ge v0, v3, :cond_9

    .line 1371
    aget-char v3, v7, v0

    if-lt v3, v11, :cond_0

    aget-char v3, v7, v0

    const/16 v4, 0x37

    if-gt v3, v4, :cond_0

    .line 1370
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_9
    move v2, v1

    .line 1375
    goto :goto_0

    .line 1378
    :cond_a
    add-int/lit8 v8, v3, -0x1

    move v6, v0

    move v3, v2

    move v4, v2

    move v5, v2

    move v0, v2

    .line 1380
    :goto_4
    if-lt v6, v8, :cond_b

    add-int/lit8 v9, v8, 0x1

    if-ge v6, v9, :cond_11

    if-eqz v3, :cond_11

    if-nez v0, :cond_11

    .line 1384
    :cond_b
    aget-char v9, v7, v6

    if-lt v9, v11, :cond_c

    aget-char v9, v7, v6

    if-gt v9, v12, :cond_c

    move v0, v1

    move v3, v2

    .line 1414
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 1388
    :cond_c
    aget-char v9, v7, v6

    const/16 v10, 0x2e

    if-ne v9, v10, :cond_d

    .line 1389
    if-nez v4, :cond_0

    if-nez v5, :cond_0

    move v4, v1

    .line 1393
    goto :goto_5

    .line 1394
    :cond_d
    aget-char v9, v7, v6

    const/16 v10, 0x65

    if-eq v9, v10, :cond_e

    aget-char v9, v7, v6

    const/16 v10, 0x45

    if-ne v9, v10, :cond_f

    .line 1396
    :cond_e
    if-nez v5, :cond_0

    .line 1400
    if-eqz v0, :cond_0

    move v3, v1

    move v5, v1

    .line 1404
    goto :goto_5

    .line 1405
    :cond_f
    aget-char v0, v7, v6

    const/16 v9, 0x2b

    if-eq v0, v9, :cond_10

    aget-char v0, v7, v6

    if-ne v0, v13, :cond_0

    .line 1406
    :cond_10
    if-eqz v3, :cond_0

    move v0, v2

    move v3, v2

    .line 1410
    goto :goto_5

    .line 1416
    :cond_11
    array-length v8, v7

    if-ge v6, v8, :cond_17

    .line 1417
    aget-char v8, v7, v6

    if-lt v8, v11, :cond_12

    aget-char v8, v7, v6

    if-gt v8, v12, :cond_12

    move v2, v1

    .line 1419
    goto/16 :goto_0

    .line 1421
    :cond_12
    aget-char v8, v7, v6

    const/16 v9, 0x65

    if-eq v8, v9, :cond_0

    aget-char v8, v7, v6

    const/16 v9, 0x45

    if-eq v8, v9, :cond_0

    .line 1425
    aget-char v8, v7, v6

    const/16 v9, 0x2e

    if-ne v8, v9, :cond_13

    .line 1426
    if-nez v4, :cond_0

    if-nez v5, :cond_0

    move v2, v0

    .line 1431
    goto/16 :goto_0

    .line 1433
    :cond_13
    if-nez v3, :cond_15

    aget-char v3, v7, v6

    const/16 v8, 0x64

    if-eq v3, v8, :cond_14

    aget-char v3, v7, v6

    const/16 v8, 0x44

    if-eq v3, v8, :cond_14

    aget-char v3, v7, v6

    const/16 v8, 0x66

    if-eq v3, v8, :cond_14

    aget-char v3, v7, v6

    const/16 v8, 0x46

    if-ne v3, v8, :cond_15

    :cond_14
    move v2, v0

    .line 1438
    goto/16 :goto_0

    .line 1440
    :cond_15
    aget-char v3, v7, v6

    const/16 v8, 0x6c

    if-eq v3, v8, :cond_16

    aget-char v3, v7, v6

    const/16 v6, 0x4c

    if-ne v3, v6, :cond_0

    .line 1443
    :cond_16
    if-eqz v0, :cond_0

    if-nez v5, :cond_0

    if-nez v4, :cond_0

    move v2, v1

    goto/16 :goto_0

    .line 1450
    :cond_17
    if-nez v3, :cond_0

    if-eqz v0, :cond_0

    move v2, v1

    goto/16 :goto_0
.end method

.method public static max(BBB)B
    .locals 1

    .prologue
    .line 1259
    if-le p1, p0, :cond_1

    move v0, p1

    .line 1262
    :goto_0
    if-le p2, v0, :cond_0

    .line 1265
    :goto_1
    return p2

    :cond_0
    move p2, v0

    goto :goto_1

    :cond_1
    move v0, p0

    goto :goto_0
.end method

.method public static max([B)B
    .locals 3

    .prologue
    .line 1007
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 1010
    const/4 v0, 0x0

    aget-byte v1, p0, v0

    .line 1011
    const/4 v0, 0x1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 1012
    aget-byte v2, p0, v0

    if-le v2, v1, :cond_0

    .line 1013
    aget-byte v1, p0, v0

    .line 1011
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1017
    :cond_1
    return v1
.end method

.method public static max(DDD)D
    .locals 2

    .prologue
    .line 1281
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-static {v0, v1, p4, p5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static max([D)D
    .locals 6

    .prologue
    .line 1031
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 1034
    const/4 v0, 0x0

    aget-wide v2, p0, v0

    .line 1035
    const/4 v0, 0x1

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 1036
    aget-wide v4, p0, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1037
    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    .line 1044
    :cond_0
    return-wide v2

    .line 1039
    :cond_1
    aget-wide v4, p0, v0

    cmpl-double v1, v4, v2

    if-lez v1, :cond_2

    .line 1040
    aget-wide v2, p0, v0

    .line 1035
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static max(FFF)F
    .locals 1

    .prologue
    .line 1297
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public static max([F)F
    .locals 3

    .prologue
    .line 1058
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 1061
    const/4 v0, 0x0

    aget v1, p0, v0

    .line 1062
    const/4 v0, 0x1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 1063
    aget v2, p0, v0

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1064
    const/high16 v1, 0x7fc00000    # NaNf

    .line 1071
    :cond_0
    return v1

    .line 1066
    :cond_1
    aget v2, p0, v0

    cmpl-float v2, v2, v1

    if-lez v2, :cond_2

    .line 1067
    aget v1, p0, v0

    .line 1062
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static max(III)I
    .locals 1

    .prologue
    .line 1223
    if-le p1, p0, :cond_1

    move v0, p1

    .line 1226
    :goto_0
    if-le p2, v0, :cond_0

    .line 1229
    :goto_1
    return p2

    :cond_0
    move p2, v0

    goto :goto_1

    :cond_1
    move v0, p0

    goto :goto_0
.end method

.method public static max([I)I
    .locals 3

    .prologue
    .line 961
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 964
    const/4 v0, 0x0

    aget v1, p0, v0

    .line 965
    const/4 v0, 0x1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 966
    aget v2, p0, v0

    if-le v2, v1, :cond_0

    .line 967
    aget v1, p0, v0

    .line 965
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 971
    :cond_1
    return v1
.end method

.method public static max(JJJ)J
    .locals 4

    .prologue
    .line 1205
    cmp-long v0, p2, p0

    if-lez v0, :cond_1

    move-wide v0, p2

    .line 1208
    :goto_0
    cmp-long v2, p4, v0

    if-lez v2, :cond_0

    .line 1211
    :goto_1
    return-wide p4

    :cond_0
    move-wide p4, v0

    goto :goto_1

    :cond_1
    move-wide v0, p0

    goto :goto_0
.end method

.method public static max([J)J
    .locals 6

    .prologue
    .line 938
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 941
    const/4 v0, 0x0

    aget-wide v2, p0, v0

    .line 942
    const/4 v0, 0x1

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 943
    aget-wide v4, p0, v0

    cmp-long v1, v4, v2

    if-lez v1, :cond_0

    .line 944
    aget-wide v2, p0, v0

    .line 942
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 948
    :cond_1
    return-wide v2
.end method

.method public static max(SSS)S
    .locals 1

    .prologue
    .line 1241
    if-le p1, p0, :cond_1

    move v0, p1

    .line 1244
    :goto_0
    if-le p2, v0, :cond_0

    .line 1247
    :goto_1
    return p2

    :cond_0
    move p2, v0

    goto :goto_1

    :cond_1
    move v0, p0

    goto :goto_0
.end method

.method public static max([S)S
    .locals 3

    .prologue
    .line 984
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 987
    const/4 v0, 0x0

    aget-short v1, p0, v0

    .line 988
    const/4 v0, 0x1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 989
    aget-short v2, p0, v0

    if-le v2, v1, :cond_0

    .line 990
    aget-short v1, p0, v0

    .line 988
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 994
    :cond_1
    return v1
.end method

.method public static min(BBB)B
    .locals 1

    .prologue
    .line 1153
    if-ge p1, p0, :cond_1

    move v0, p1

    .line 1156
    :goto_0
    if-ge p2, v0, :cond_0

    .line 1159
    :goto_1
    return p2

    :cond_0
    move p2, v0

    goto :goto_1

    :cond_1
    move v0, p0

    goto :goto_0
.end method

.method public static min([B)B
    .locals 3

    .prologue
    .line 859
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 862
    const/4 v0, 0x0

    aget-byte v1, p0, v0

    .line 863
    const/4 v0, 0x1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 864
    aget-byte v2, p0, v0

    if-ge v2, v1, :cond_0

    .line 865
    aget-byte v1, p0, v0

    .line 863
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 869
    :cond_1
    return v1
.end method

.method public static min(DDD)D
    .locals 2

    .prologue
    .line 1175
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    invoke-static {v0, v1, p4, p5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static min([D)D
    .locals 6

    .prologue
    .line 883
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 886
    const/4 v0, 0x0

    aget-wide v2, p0, v0

    .line 887
    const/4 v0, 0x1

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 888
    aget-wide v4, p0, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 889
    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    .line 896
    :cond_0
    return-wide v2

    .line 891
    :cond_1
    aget-wide v4, p0, v0

    cmpg-double v1, v4, v2

    if-gez v1, :cond_2

    .line 892
    aget-wide v2, p0, v0

    .line 887
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static min(FFF)F
    .locals 1

    .prologue
    .line 1191
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public static min([F)F
    .locals 3

    .prologue
    .line 910
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 913
    const/4 v0, 0x0

    aget v1, p0, v0

    .line 914
    const/4 v0, 0x1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 915
    aget v2, p0, v0

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 916
    const/high16 v1, 0x7fc00000    # NaNf

    .line 923
    :cond_0
    return v1

    .line 918
    :cond_1
    aget v2, p0, v0

    cmpg-float v2, v2, v1

    if-gez v2, :cond_2

    .line 919
    aget v1, p0, v0

    .line 914
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static min(III)I
    .locals 1

    .prologue
    .line 1117
    if-ge p1, p0, :cond_1

    move v0, p1

    .line 1120
    :goto_0
    if-ge p2, v0, :cond_0

    .line 1123
    :goto_1
    return p2

    :cond_0
    move p2, v0

    goto :goto_1

    :cond_1
    move v0, p0

    goto :goto_0
.end method

.method public static min([I)I
    .locals 3

    .prologue
    .line 813
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 816
    const/4 v0, 0x0

    aget v1, p0, v0

    .line 817
    const/4 v0, 0x1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 818
    aget v2, p0, v0

    if-ge v2, v1, :cond_0

    .line 819
    aget v1, p0, v0

    .line 817
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 823
    :cond_1
    return v1
.end method

.method public static min(JJJ)J
    .locals 4

    .prologue
    .line 1099
    cmp-long v0, p2, p0

    if-gez v0, :cond_1

    move-wide v0, p2

    .line 1102
    :goto_0
    cmp-long v2, p4, v0

    if-gez v2, :cond_0

    .line 1105
    :goto_1
    return-wide p4

    :cond_0
    move-wide p4, v0

    goto :goto_1

    :cond_1
    move-wide v0, p0

    goto :goto_0
.end method

.method public static min([J)J
    .locals 6

    .prologue
    .line 790
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 793
    const/4 v0, 0x0

    aget-wide v2, p0, v0

    .line 794
    const/4 v0, 0x1

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 795
    aget-wide v4, p0, v0

    cmp-long v1, v4, v2

    if-gez v1, :cond_0

    .line 796
    aget-wide v2, p0, v0

    .line 794
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 800
    :cond_1
    return-wide v2
.end method

.method public static min(SSS)S
    .locals 1

    .prologue
    .line 1135
    if-ge p1, p0, :cond_1

    move v0, p1

    .line 1138
    :goto_0
    if-ge p2, v0, :cond_0

    .line 1141
    :goto_1
    return p2

    :cond_0
    move p2, v0

    goto :goto_1

    :cond_1
    move v0, p0

    goto :goto_0
.end method

.method public static min([S)S
    .locals 3

    .prologue
    .line 836
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 839
    const/4 v0, 0x0

    aget-short v1, p0, v0

    .line 840
    const/4 v0, 0x1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 841
    aget-short v2, p0, v0

    if-ge v2, v1, :cond_0

    .line 842
    aget-short v1, p0, v0

    .line 840
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 846
    :cond_1
    return v1
.end method

.method public static toByte(Ljava/lang/String;)B
    .locals 1

    .prologue
    .line 303
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/math/NumberUtils;->toByte(Ljava/lang/String;B)B

    move-result v0

    return v0
.end method

.method public static toByte(Ljava/lang/String;B)B
    .locals 1

    .prologue
    .line 324
    if-nez p0, :cond_0

    .line 330
    :goto_0
    return p1

    .line 328
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    goto :goto_0

    .line 330
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static toDouble(Ljava/lang/String;)D
    .locals 2

    .prologue
    .line 251
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/math/NumberUtils;->toDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static toDouble(Ljava/lang/String;D)D
    .locals 1

    .prologue
    .line 274
    if-nez p0, :cond_0

    .line 280
    :goto_0
    return-wide p1

    .line 278
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p1

    goto :goto_0

    .line 280
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static toFloat(Ljava/lang/String;)F
    .locals 1

    .prologue
    .line 199
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/math/NumberUtils;->toFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public static toFloat(Ljava/lang/String;F)F
    .locals 1

    .prologue
    .line 222
    if-nez p0, :cond_0

    .line 228
    :goto_0
    return p1

    .line 226
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    goto :goto_0

    .line 228
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static toInt(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/math/NumberUtils;->toInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static toInt(Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 121
    if-nez p0, :cond_0

    .line 127
    :goto_0
    return p1

    .line 125
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    goto :goto_0

    .line 127
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static toLong(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 149
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/math/NumberUtils;->toLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static toLong(Ljava/lang/String;J)J
    .locals 1

    .prologue
    .line 170
    if-nez p0, :cond_0

    .line 176
    :goto_0
    return-wide p1

    .line 174
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p1

    goto :goto_0

    .line 176
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static toShort(Ljava/lang/String;)S
    .locals 1

    .prologue
    .line 352
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/math/NumberUtils;->toShort(Ljava/lang/String;S)S

    move-result v0

    return v0
.end method

.method public static toShort(Ljava/lang/String;S)S
    .locals 1

    .prologue
    .line 373
    if-nez p0, :cond_0

    .line 379
    :goto_0
    return p1

    .line 377
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    goto :goto_0

    .line 379
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static validateArray(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1081
    if-nez p0, :cond_0

    .line 1082
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1083
    :cond_0
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_1

    .line 1084
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array cannot be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1086
    :cond_1
    return-void
.end method
