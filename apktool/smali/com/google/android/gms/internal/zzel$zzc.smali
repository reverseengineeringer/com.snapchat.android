.class public Lcom/google/android/gms/internal/zzel$zzc;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zzc"
.end annotation


# instance fields
.field public final index:I

.field public final zzlN:Landroid/content/Context;

.field public final zzul:Landroid/view/ViewGroup$LayoutParams;

.field public final zzum:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzic;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzic;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzel$zzc;->zzul:Landroid/view/ViewGroup$LayoutParams;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzic;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzic;->zzeE()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/zzel$zzc;->zzlN:Landroid/content/Context;

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzel$zzc;->zzum:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzel$zzc;->zzum:Landroid/view/ViewGroup;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzic;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzel$zzc;->index:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzel$zzc;->zzum:Landroid/view/ViewGroup;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzic;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/zzic;->zzA(Z)V

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzel$zza;

    const-string v1, "Could not get the parent of the WebView for an overlay."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzel$zza;-><init>(Ljava/lang/String;)V

    throw v0
.end method
