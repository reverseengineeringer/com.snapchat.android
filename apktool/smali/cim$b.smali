.class final Lcim$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field public final a:I

.field public final b:J


# direct methods
.method constructor <init>(IJ)V
    .locals 0

    .prologue
    .line 780
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 781
    iput p1, p0, Lcim$b;->a:I

    .line 782
    iput-wide p2, p0, Lcim$b;->b:J

    .line 783
    return-void
.end method
