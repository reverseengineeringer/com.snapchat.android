.class final Ladv$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ladv;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ladv;


# direct methods
.method constructor <init>(Ladv;)V
    .locals 0

    .prologue
    .line 326
    iput-object p1, p0, Ladv$1;->a:Ladv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Ladv$1;->a:Ladv;

    iget-object v0, v0, Ladv;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 331
    iget-object v1, p0, Ladv$1;->a:Ladv;

    iget-object v1, v1, Ladv;->a:Landroid/widget/MediaController;

    invoke-virtual {v1}, Landroid/widget/MediaController;->getMeasuredHeight()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 332
    iget-object v1, p0, Ladv$1;->a:Ladv;

    iget-object v1, v1, Ladv;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 333
    return-void
.end method
