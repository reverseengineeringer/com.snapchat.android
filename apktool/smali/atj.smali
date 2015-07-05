.class public final Latj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static mRobotoBoldCondensed:Landroid/graphics/Typeface;


# direct methods
.method public static a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 21
    check-cast p0, Landroid/widget/TextView;

    sget-object v0, Latj;->mRobotoBoldCondensed:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 22
    return-void
.end method
