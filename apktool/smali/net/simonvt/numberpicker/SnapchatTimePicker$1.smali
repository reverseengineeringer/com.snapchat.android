.class final Lnet/simonvt/numberpicker/SnapchatTimePicker$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/simonvt/numberpicker/SnapchatTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lnet/simonvt/numberpicker/SnapchatTimePicker;


# direct methods
.method constructor <init>(Lnet/simonvt/numberpicker/SnapchatTimePicker;)V
    .locals 0

    .prologue
    .line 623
    iput-object p1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$1;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 625
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$1;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-static {v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->a(Lnet/simonvt/numberpicker/SnapchatTimePicker;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->clearFocus()V

    .line 626
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lbxt$b;->np__increment:I

    if-ne v0, v1, :cond_0

    .line 627
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$1;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->a(Lnet/simonvt/numberpicker/SnapchatTimePicker;Z)V

    .line 631
    :goto_0
    return-void

    .line 629
    :cond_0
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$1;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->a(Lnet/simonvt/numberpicker/SnapchatTimePicker;Z)V

    goto :goto_0
.end method
