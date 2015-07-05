.class Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/time/DurationFormatUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Token"
.end annotation


# instance fields
.field private count:I

.field private final value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 584
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 585
    iput-object p1, p0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    .line 586
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->count:I

    .line 587
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 596
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 597
    iput-object p1, p0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    .line 598
    iput p2, p0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->count:I

    .line 599
    return-void
.end method

.method static containsTokenWithValue([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 567
    array-length v2, p0

    move v1, v0

    .line 568
    :goto_0
    if-ge v1, v2, :cond_0

    .line 569
    aget-object v3, p0, v1

    invoke-virtual {v3}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_1

    .line 570
    const/4 v0, 0x1

    .line 573
    :cond_0
    return v0

    .line 568
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 634
    instance-of v1, p1, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;

    if-eqz v1, :cond_0

    .line 635
    check-cast p1, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;

    .line 636
    iget-object v1, p0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p1, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 650
    :cond_0
    :goto_0
    return v0

    .line 639
    :cond_1
    iget v1, p0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->count:I

    iget v2, p1, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->count:I

    if-ne v1, v2, :cond_0

    .line 642
    iget-object v1, p0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/StringBuilder;

    if-eqz v1, :cond_2

    .line 643
    iget-object v0, p0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 644
    :cond_2
    iget-object v1, p0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Number;

    if-eqz v1, :cond_3

    .line 645
    iget-object v0, p0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    iget-object v1, p1, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 647
    :cond_3
    iget-object v1, p0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    iget-object v2, p1, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method getCount()I
    .locals 1

    .prologue
    .line 614
    iget v0, p0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->count:I

    return v0
.end method

.method getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 662
    iget-object v0, p0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method increment()V
    .locals 1

    .prologue
    .line 605
    iget v0, p0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->count:I

    .line 606
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 672
    iget-object v0, p0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->count:I

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/StringUtils;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
