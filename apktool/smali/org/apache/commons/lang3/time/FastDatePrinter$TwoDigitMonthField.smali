.class Lorg/apache/commons/lang3/time/FastDatePrinter$TwoDigitMonthField;
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
    name = "TwoDigitMonthField"
.end annotation


# static fields
.field static final INSTANCE:Lorg/apache/commons/lang3/time/FastDatePrinter$TwoDigitMonthField;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 961
    new-instance v0, Lorg/apache/commons/lang3/time/FastDatePrinter$TwoDigitMonthField;

    invoke-direct {v0}, Lorg/apache/commons/lang3/time/FastDatePrinter$TwoDigitMonthField;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/time/FastDatePrinter$TwoDigitMonthField;->INSTANCE:Lorg/apache/commons/lang3/time/FastDatePrinter$TwoDigitMonthField;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 967
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 968
    return-void
.end method


# virtual methods
.method public final appendTo(Ljava/lang/StringBuffer;I)V
    .locals 1

    .prologue
    .line 991
    div-int/lit8 v0, p2, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 992
    rem-int/lit8 v0, p2, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 993
    return-void
.end method

.method public appendTo(Ljava/lang/StringBuffer;Ljava/util/Calendar;)V
    .locals 1

    .prologue
    .line 983
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/time/FastDatePrinter$TwoDigitMonthField;->appendTo(Ljava/lang/StringBuffer;I)V

    .line 984
    return-void
.end method

.method public estimateLength()I
    .locals 1

    .prologue
    .line 975
    const/4 v0, 0x2

    return v0
.end method
