.class final Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/DrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DrawerLayoutCompatImplApi21"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyMarginInsets(Landroid/view/ViewGroup$MarginLayoutParams;Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 294
    invoke-static {p1, p2, p3}, Landroid/support/v4/widget/DrawerLayoutCompatApi21;->applyMarginInsets(Landroid/view/ViewGroup$MarginLayoutParams;Ljava/lang/Object;I)V

    .line 295
    return-void
.end method

.method public final configureApplyInsets(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 286
    invoke-static {p1}, Landroid/support/v4/widget/DrawerLayoutCompatApi21;->configureApplyInsets(Landroid/view/View;)V

    .line 287
    return-void
.end method

.method public final dispatchChildInsets(Landroid/view/View;Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 290
    invoke-static {p1, p2, p3}, Landroid/support/v4/widget/DrawerLayoutCompatApi21;->dispatchChildInsets(Landroid/view/View;Ljava/lang/Object;I)V

    .line 291
    return-void
.end method

.method public final getTopInset(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 298
    invoke-static {p1}, Landroid/support/v4/widget/DrawerLayoutCompatApi21;->getTopInset(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
