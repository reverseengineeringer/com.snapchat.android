.class Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;
.super Lorg/apache/commons/lang3/time/FastDateParser$Strategy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/time/FastDateParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NumberStrategy"
.end annotation


# instance fields
.field private final field:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    .prologue
    .line 644
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/lang3/time/FastDateParser$Strategy;-><init>(Lorg/apache/commons/lang3/time/FastDateParser$1;)V

    .line 645
    iput p1, p0, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;->field:I

    .line 646
    return-void
.end method


# virtual methods
.method addRegex(Lorg/apache/commons/lang3/time/FastDateParser;Ljava/lang/StringBuilder;)Z
    .locals 2

    .prologue
    .line 662
    invoke-virtual {p1}, Lorg/apache/commons/lang3/time/FastDateParser;->isNextNumber()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 663
    const-string v0, "(\\p{Nd}{"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/lang3/time/FastDateParser;->getFieldWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}+)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 666
    :cond_0
    const-string v0, "(\\p{Nd}++)"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method isNumber()Z
    .locals 1

    .prologue
    .line 653
    const/4 v0, 0x1

    return v0
.end method

.method modify(I)I
    .locals 0

    .prologue
    .line 685
    return p1
.end method

.method setCalendar(Lorg/apache/commons/lang3/time/FastDateParser;Ljava/util/Calendar;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 676
    iget v0, p0, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;->field:I

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;->modify(I)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 677
    return-void
.end method
