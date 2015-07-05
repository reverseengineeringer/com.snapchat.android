.class public final Lbl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static c:Lbl;


# instance fields
.field public a:D

.field public b:D


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 20
    new-instance v0, Lbl;

    const-wide/high16 v2, 0x4044000000000000L    # 40.0

    invoke-static {v2, v3}, Lbg;->a(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x401c000000000000L    # 7.0

    invoke-static {v4, v5}, Lbg;->b(D)D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lbl;-><init>(DD)V

    sput-object v0, Lbl;->c:Lbl;

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-wide p1, p0, Lbl;->b:D

    .line 29
    iput-wide p3, p0, Lbl;->a:D

    .line 30
    return-void
.end method
