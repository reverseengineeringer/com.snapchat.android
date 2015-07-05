.class Lorg/apache/commons/lang3/time/FastDatePrinter$TextField;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/time/FastDatePrinter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TextField"
.end annotation


# instance fields
.field private final mField:I

.field private final mValues:[Ljava/lang/String;


# direct methods
.method constructor <init>(I[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 688
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 689
    iput p1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$TextField;->mField:I

    .line 690
    iput-object p2, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$TextField;->mValues:[Ljava/lang/String;

    .line 691
    return-void
.end method


# virtual methods
.method public appendTo(Ljava/lang/StringBuffer;Ljava/util/Calendar;)V
    .locals 2

    .prologue
    .line 713
    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$TextField;->mValues:[Ljava/lang/String;

    iget v1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$TextField;->mField:I

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 714
    return-void
.end method

.method public estimateLength()I
    .locals 3

    .prologue
    .line 698
    const/4 v1, 0x0

    .line 699
    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$TextField;->mValues:[Ljava/lang/String;

    array-length v0, v0

    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-ltz v2, :cond_0

    .line 700
    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$TextField;->mValues:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 701
    if-le v0, v1, :cond_1

    :goto_1
    move v1, v0

    move v0, v2

    .line 704
    goto :goto_0

    .line 705
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method
