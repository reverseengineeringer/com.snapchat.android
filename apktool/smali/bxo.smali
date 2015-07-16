.class public final Lbxo;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 37
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 38
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 39
    return-object v1

    .line 37
    :array_0
    .array-data 4
        -0x1000000
        0x0
    .end array-data
.end method
