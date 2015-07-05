.class Lorg/apache/commons/lang3/time/FastDatePrinter$CharacterLiteral;
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
    name = "CharacterLiteral"
.end annotation


# instance fields
.field private final mValue:C


# direct methods
.method constructor <init>(C)V
    .locals 0

    .prologue
    .line 620
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 621
    iput-char p1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$CharacterLiteral;->mValue:C

    .line 622
    return-void
.end method


# virtual methods
.method public appendTo(Ljava/lang/StringBuffer;Ljava/util/Calendar;)V
    .locals 1

    .prologue
    .line 637
    iget-char v0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$CharacterLiteral;->mValue:C

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 638
    return-void
.end method

.method public estimateLength()I
    .locals 1

    .prologue
    .line 629
    const/4 v0, 0x1

    return v0
.end method
