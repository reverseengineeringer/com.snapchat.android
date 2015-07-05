.class Lcom/google/android/gms/internal/zzt$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzt;->zza(Lcom/google/android/gms/internal/zzhe$zza;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzlI:Lcom/google/android/gms/internal/zzu;

.field final synthetic zzlJ:Lcom/google/android/gms/internal/zzt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzt;Lcom/google/android/gms/internal/zzu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzt$1;->zzlJ:Lcom/google/android/gms/internal/zzt;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzt$1;->zzlI:Lcom/google/android/gms/internal/zzu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzt$1;->zzlI:Lcom/google/android/gms/internal/zzu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzu;->recordClick()V

    const/4 v0, 0x0

    return v0
.end method
