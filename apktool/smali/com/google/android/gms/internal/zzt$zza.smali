.class public final Lcom/google/android/gms/internal/zzt$zza;
.super Landroid/widget/ViewSwitcher;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation


# instance fields
.field private final zzlL:Lcom/google/android/gms/internal/zzhs;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/google/android/gms/internal/zzhs;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzhs;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzt$zza;->zzlL:Lcom/google/android/gms/internal/zzhs;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzt$zza;)Lcom/google/android/gms/internal/zzhs;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzt$zza;->zzlL:Lcom/google/android/gms/internal/zzhs;

    return-object v0
.end method


# virtual methods
.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzt$zza;->zzlL:Lcom/google/android/gms/internal/zzhs;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzhs;->zzc(Landroid/view/MotionEvent;)V

    const/4 v0, 0x0

    return v0
.end method

.method public final removeAllViews()V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzt$zza;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzt$zza;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/google/android/gms/internal/zzic;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/google/android/gms/internal/zzic;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzic;->destroy()V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-super {p0}, Landroid/widget/ViewSwitcher;->removeAllViews()V

    return-void
.end method
