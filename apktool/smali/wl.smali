.class public final Lwl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:F


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lwl;->a:F

    .line 20
    return-void
.end method
