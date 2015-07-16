.class public final Lcma;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/view/View;

.field private b:F


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput v1, p0, Lcma;->b:F

    .line 17
    iput-object p1, p0, Lcma;->a:Landroid/view/View;

    .line 18
    iget-object v0, p0, Lcma;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 19
    return-void
.end method
