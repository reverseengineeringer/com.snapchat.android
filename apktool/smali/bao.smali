.class public final Lbao;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final isChangingQuality:Z

.field public final ready:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p1, p0, Lbao;->ready:Z

    .line 17
    iput-boolean p2, p0, Lbao;->isChangingQuality:Z

    .line 18
    return-void
.end method
