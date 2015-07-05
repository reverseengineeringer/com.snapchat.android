.class final Lorg/apache/commons/lang3/time/FastDateParser$1;
.super Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/time/FastDateParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 689
    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;-><init>(I)V

    return-void
.end method


# virtual methods
.method final setCalendar(Lorg/apache/commons/lang3/time/FastDateParser;Ljava/util/Calendar;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 695
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 696
    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    .line 697
    # invokes: Lorg/apache/commons/lang3/time/FastDateParser;->adjustYear(I)I
    invoke-static {p1, v0}, Lorg/apache/commons/lang3/time/FastDateParser;->access$300(Lorg/apache/commons/lang3/time/FastDateParser;I)I

    move-result v0

    .line 699
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p2, v1, v0}, Ljava/util/Calendar;->set(II)V

    .line 700
    return-void
.end method
