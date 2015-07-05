.class Lorg/apache/commons/lang3/time/FastDatePrinter$TwentyFourHourField;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/time/FastDatePrinter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TwentyFourHourField"
.end annotation


# instance fields
.field private final mRule:Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;


# direct methods
.method constructor <init>(Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;)V
    .locals 0

    .prologue
    .line 1053
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1054
    iput-object p1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$TwentyFourHourField;->mRule:Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    .line 1055
    return-void
.end method


# virtual methods
.method public appendTo(Ljava/lang/StringBuffer;I)V
    .locals 1

    .prologue
    .line 1082
    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$TwentyFourHourField;->mRule:Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;->appendTo(Ljava/lang/StringBuffer;I)V

    .line 1083
    return-void
.end method

.method public appendTo(Ljava/lang/StringBuffer;Ljava/util/Calendar;)V
    .locals 2

    .prologue
    const/16 v1, 0xb

    .line 1070
    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 1071
    if-nez v0, :cond_0

    .line 1072
    invoke-virtual {p2, v1}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 1074
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$TwentyFourHourField;->mRule:Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    invoke-interface {v1, p1, v0}, Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;->appendTo(Ljava/lang/StringBuffer;I)V

    .line 1075
    return-void
.end method

.method public estimateLength()I
    .locals 1

    .prologue
    .line 1062
    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$TwentyFourHourField;->mRule:Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    invoke-interface {v0}, Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;->estimateLength()I

    move-result v0

    return v0
.end method
