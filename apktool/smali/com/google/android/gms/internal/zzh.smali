.class public abstract Lcom/google/android/gms/internal/zzh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzg;


# instance fields
.field protected zzkv:Landroid/view/MotionEvent;

.field protected zzkw:Landroid/util/DisplayMetrics;

.field protected zzkx:Lcom/google/android/gms/internal/zzm;

.field private zzky:Lcom/google/android/gms/internal/zzn;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzm;Lcom/google/android/gms/internal/zzn;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzh;->zzkx:Lcom/google/android/gms/internal/zzm;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzh;->zzky:Lcom/google/android/gms/internal/zzn;

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzh;->zzkw:Landroid/util/DisplayMetrics;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzh;->zzkw:Landroid/util/DisplayMetrics;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzh;->zzkw:Landroid/util/DisplayMetrics;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/util/DisplayMetrics;->density:F

    goto :goto_0
.end method

.method private zza(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x7

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzh;->zzt()V

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzh;->zzc(Landroid/content/Context;)V

    :goto_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzh;->zzu()[B

    move-result-object v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    array-length v1, v0

    if-nez v1, :cond_1

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzh;->zzb(Landroid/content/Context;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_0
    move-exception v0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :try_start_5
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/zzh;->zza([BLjava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v0

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :catch_2
    move-exception v0

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private zzt()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzh;->zzky:Lcom/google/android/gms/internal/zzn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzn;->reset()V

    return-void
.end method

.method private zzu()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzh;->zzky:Lcom/google/android/gms/internal/zzn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzn;->zzD()[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public zza(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/zzh;->zza(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zza(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/zzh;->zza(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method zza([BLjava/lang/String;)Ljava/lang/String;
    .locals 6

    const/16 v5, 0x100

    const/16 v4, 0xf0

    const/16 v1, 0xef

    array-length v0, p1

    if-le v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzh;->zzt()V

    const/16 v0, 0x14

    const-wide/16 v2, 0x1

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gms/internal/zzh;->zza(IJ)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzh;->zzu()[B

    move-result-object p1

    :cond_0
    array-length v0, p1

    if-ge v0, v1, :cond_2

    array-length v0, p1

    rsub-int v0, v0, 0xef

    new-array v0, v0, [B

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    array-length v2, p1

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    :goto_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    new-array v1, v5, [B

    new-instance v2, Lcom/google/android/gms/internal/zzf;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzf;-><init>()V

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/zzf;->zza([B[B)V

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0, p2, v1}, Lcom/google/android/gms/internal/zzh;->zza(Ljava/lang/String;[B)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzh;->zzkx:Lcom/google/android/gms/internal/zzm;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzm;->zza([BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    array-length v1, p1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    goto :goto_0
.end method

.method public zza(III)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/zzh;->zzkv:Landroid/view/MotionEvent;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/zzh;->zzkv:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    :cond_0
    const-wide/16 v2, 0x0

    move/from16 v0, p3

    int-to-long v4, v0

    const/4 v6, 0x1

    move/from16 v0, p1

    int-to-float v7, v0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/zzh;->zzkw:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v7, v8

    move/from16 v0, p2

    int-to-float v8, v0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/gms/internal/zzh;->zzkw:Landroid/util/DisplayMetrics;

    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v8, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v2 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/gms/internal/zzh;->zzkv:Landroid/view/MotionEvent;

    return-void
.end method

.method protected zza(IJ)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzh;->zzky:Lcom/google/android/gms/internal/zzn;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzn;->zzb(IJ)V

    return-void
.end method

.method protected zza(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzh;->zzky:Lcom/google/android/gms/internal/zzn;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/zzn;->zzb(ILjava/lang/String;)V

    return-void
.end method

.method public zza(Landroid/view/MotionEvent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzh;->zzkv:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzh;->zzkv:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzh;->zzkv:Landroid/view/MotionEvent;

    :cond_1
    return-void
.end method

.method zza(Ljava/lang/String;[B)V
    .locals 2

    const/16 v1, 0x20

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzwp;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzwp;-><init>([B)V

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/zzwp;->zzs([B)V

    return-void
.end method

.method protected abstract zzb(Landroid/content/Context;)V
.end method

.method protected abstract zzc(Landroid/content/Context;)V
.end method
