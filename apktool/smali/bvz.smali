.class public final Lbvz;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I

.field public static b:I

.field public static c:F

.field public static d:I

.field public static e:I

.field public static f:Z


# direct methods
.method public static a(F)I
    .locals 2

    .prologue
    .line 33
    sget v0, Lbvz;->c:F

    .line 34
    mul-float/2addr v0, p0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method
