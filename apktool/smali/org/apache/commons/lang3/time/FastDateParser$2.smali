.class final Lorg/apache/commons/lang3/time/FastDateParser$2;
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
    .line 799
    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;-><init>(I)V

    return-void
.end method


# virtual methods
.method final modify(I)I
    .locals 1

    .prologue
    .line 802
    add-int/lit8 v0, p1, -0x1

    return v0
.end method
