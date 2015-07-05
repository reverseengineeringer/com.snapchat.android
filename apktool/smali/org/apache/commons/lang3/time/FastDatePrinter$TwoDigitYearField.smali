.class Lorg/apache/commons/lang3/time/FastDatePrinter$TwoDigitYearField;
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
    name = "TwoDigitYearField"
.end annotation


# static fields
.field static final INSTANCE:Lorg/apache/commons/lang3/time/FastDatePrinter$TwoDigitYearField;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 922
    new-instance v0, Lorg/apache/commons/lang3/time/FastDatePrinter$TwoDigitYearField;

    invoke-direct {v0}, Lorg/apache/commons/lang3/time/FastDatePrinter$TwoDigitYearField;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/time/FastDatePrinter$TwoDigitYearField;->INSTANCE:Lorg/apache/commons/lang3/time/FastDatePrinter$TwoDigitYearField;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 928
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 929
    return-void
.end method


# virtual methods
.method public final appendTo(Ljava/lang/StringBuffer;I)V
    .locals 1

    .prologue
    .line 952
    div-int/lit8 v0, p2, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 953
    rem-int/lit8 v0, p2, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 954
    return-void
.end method

.method public appendTo(Ljava/lang/StringBuffer;Ljava/util/Calendar;)V
    .locals 1

    .prologue
    .line 944
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    rem-int/lit8 v0, v0, 0x64

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/time/FastDatePrinter$TwoDigitYearField;->appendTo(Ljava/lang/StringBuffer;I)V

    .line 945
    return-void
.end method

.method public estimateLength()I
    .locals 1

    .prologue
    .line 936
    const/4 v0, 0x2

    return v0
.end method
