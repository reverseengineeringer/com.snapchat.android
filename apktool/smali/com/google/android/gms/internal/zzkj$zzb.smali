.class final Lcom/google/android/gms/internal/zzkj$zzb;
.super Landroid/graphics/drawable/Drawable$ConstantState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzkj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "zzb"
.end annotation


# instance fields
.field zzPc:I

.field zzPd:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzkj$zzb;)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    if-eqz p1, :cond_0

    iget v0, p1, Lcom/google/android/gms/internal/zzkj$zzb;->zzPc:I

    iput v0, p0, Lcom/google/android/gms/internal/zzkj$zzb;->zzPc:I

    iget v0, p1, Lcom/google/android/gms/internal/zzkj$zzb;->zzPd:I

    iput v0, p0, Lcom/google/android/gms/internal/zzkj$zzb;->zzPd:I

    :cond_0
    return-void
.end method


# virtual methods
.method public final getChangingConfigurations()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzkj$zzb;->zzPc:I

    return v0
.end method

.method public final newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzkj;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzkj;-><init>(Lcom/google/android/gms/internal/zzkj$zzb;)V

    return-object v0
.end method
