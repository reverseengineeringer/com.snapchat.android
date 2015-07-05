.class public final Lcom/google/android/gms/internal/zzkl;
.super Landroid/widget/ImageView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzkl$zza;
    }
.end annotation


# instance fields
.field private zzPe:Landroid/net/Uri;

.field private zzPf:I

.field private zzPg:I

.field private zzPh:Lcom/google/android/gms/internal/zzkl$zza;

.field private zzPi:I

.field private zzPj:F


# virtual methods
.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkl;->zzPh:Lcom/google/android/gms/internal/zzkl$zza;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkl;->zzPh:Lcom/google/android/gms/internal/zzkl$zza;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzkl;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzkl;->getHeight()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzkl$zza;->zzk(II)Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/google/android/gms/internal/zzkl;->zzPg:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/zzkl;->zzPg:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_1
    return-void
.end method

.method protected final onMeasure(II)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    iget v0, p0, Lcom/google/android/gms/internal/zzkl;->zzPi:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzkl;->getMeasuredHeight()I

    move-result v0

    int-to-float v1, v0

    iget v2, p0, Lcom/google/android/gms/internal/zzkl;->zzPj:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzkl;->setMeasuredDimension(II)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzkl;->getMeasuredWidth()I

    move-result v1

    int-to-float v0, v1

    iget v2, p0, Lcom/google/android/gms/internal/zzkl;->zzPj:F

    div-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final zzaE(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzkl;->zzPf:I

    return-void
.end method

.method public final zzi(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzkl;->zzPe:Landroid/net/Uri;

    return-void
.end method

.method public final zziK()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzkl;->zzPf:I

    return v0
.end method
