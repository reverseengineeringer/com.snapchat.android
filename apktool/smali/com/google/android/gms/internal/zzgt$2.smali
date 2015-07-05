.class Lcom/google/android/gms/internal/zzgt$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzht$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzgt;->zza(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzht$zza",
        "<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzxc:Lcom/google/android/gms/internal/zzgt;

.field final synthetic zzxd:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzgt;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgt$2;->zzxc:Lcom/google/android/gms/internal/zzgt;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzgt$2;->zzxd:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Ljava/io/InputStream;)Landroid/graphics/drawable/Drawable;
    .locals 5

    const/4 v4, 0x2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/zzlz;->zzd(Ljava/io/InputStream;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgt$2;->zzxc:Lcom/google/android/gms/internal/zzgt;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzgt$2;->zzxd:Z

    invoke-virtual {v1, v4, v2}, Lcom/google/android/gms/internal/zzgt;->zza(IZ)V

    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    move-object v1, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgt$2;->zzxc:Lcom/google/android/gms/internal/zzgt;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzgt$2;->zzxd:Z

    invoke-virtual {v1, v4, v2}, Lcom/google/android/gms/internal/zzgt;->zza(IZ)V

    goto :goto_1

    :cond_1
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method public synthetic zzb(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzgt$2;->zza(Ljava/io/InputStream;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public zzdP()Landroid/graphics/drawable/Drawable;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgt$2;->zzxc:Lcom/google/android/gms/internal/zzgt;

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzgt$2;->zzxd:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzgt;->zza(IZ)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic zzdQ()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzgt$2;->zzdP()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
