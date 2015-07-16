.class final Laev$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laev;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laev;


# direct methods
.method constructor <init>(Laev;)V
    .locals 0

    .prologue
    .line 337
    iput-object p1, p0, Laev$1;->a:Laev;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Laev$1;->a:Laev;

    iget-object v0, v0, Laev;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 342
    iget-object v1, p0, Laev$1;->a:Laev;

    iget-object v1, v1, Laev;->a:Landroid/widget/MediaController;

    invoke-virtual {v1}, Landroid/widget/MediaController;->getMeasuredHeight()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 343
    iget-object v1, p0, Laev$1;->a:Laev;

    iget-object v1, v1, Laev;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 344
    return-void
.end method
