.class final Lavh$1;
.super Landroid/view/OrientationEventListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lavh;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lavh;


# direct methods
.method constructor <init>(Lavh;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 72
    iput-object p1, p0, Lavh$1;->this$0:Lavh;

    const/4 v0, 0x3

    invoke-direct {p0, p2, v0}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public final onOrientationChanged(I)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 74
    iget-object v1, p0, Lavh$1;->this$0:Lavh;

    const/16 v2, 0x152

    const/16 v3, 0x168

    invoke-static {p1, v2, v3}, Lavh;->a(III)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x16

    invoke-static {p1, v0, v2}, Lavh;->a(III)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_0
    iget v2, v1, Lavh;->mRotation:I

    if-eq v0, v2, :cond_2

    iget v2, v1, Lavh;->mReportRotation:I

    and-int/2addr v2, v0

    if-eqz v2, :cond_2

    iput v0, v1, Lavh;->mRotation:I

    iget-object v2, v1, Lavh;->mScreenRotationListener:Lavh$a;

    if-eqz v2, :cond_2

    iget-object v1, v1, Lavh;->mScreenRotationListener:Lavh$a;

    invoke-interface {v1, v0}, Lavh$a;->a(I)V

    .line 75
    :cond_2
    return-void

    .line 74
    :cond_3
    const/16 v2, 0xf8

    const/16 v3, 0x124

    invoke-static {p1, v2, v3}, Lavh;->a(III)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v0, 0x10

    goto :goto_0

    :cond_4
    const/16 v2, 0x9e

    const/16 v3, 0xca

    invoke-static {p1, v2, v3}, Lavh;->a(III)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v0, 0x100

    goto :goto_0

    :cond_5
    const/16 v2, 0x44

    const/16 v3, 0x70

    invoke-static {p1, v2, v3}, Lavh;->a(III)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0x1000

    goto :goto_0
.end method
