.class public Lcom/snapchat/android/util/PhotoEffectTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/graphics/Bitmap;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final BLACK_AND_WHITE:I = 0x174f3

.field public static final BLACK_AND_WHITE_NATIVE_FILTER:I = 0x0

.field private static final BLACK_HOLE:I = 0x4f726d3f

.field private static final BLOOM:I = 0x597c603

.field private static final BULGE:I = 0x59bd117

.field private static final DANOZ:I = 0x5aef13c

.field private static final DARKEN:I = -0x4fcf0961

.field private static final EQUALIZE:I = 0x22a775a0

.field private static final ETIKATE:I = -0x553eb51f

.field public static final ETIKATE_NATIVE_FILTER:I = 0x11

.field private static final HELLO_WORLD:I = -0x5adf4a00

.field public static final INSTASNAP_NATIVE_FILTER:I = 0x3

.field private static final LIGHTEN:I = 0xa2a543f

.field private static final MIRROR:I = -0x7f3b33c2

.field private static final NEGATIVE:I = 0x36e70c35

.field private static final NO_FILTER:I = 0x469dc479

.field private static final PINCH:I = 0x65bacba

.field private static final RADIOACTIVE:I = -0x13a953f

.field private static final SELECTIVE_COLOR:I = -0x714d5c0d

.field private static final SEPIA:I = 0x68429f6

.field private static final SKETCHY:I = 0x58995095

.field private static final SO_POPULAR:I = -0x721abb03

.field private static final STRETCH_CONTRAST:I = 0x1be6d25

.field private static final TONE_MAP:I = 0x192f6


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mHashcode:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 280
    :try_start_0
    const-string v0, "stlport_shared"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 281
    const-string v0, "photoeffect"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    :goto_0
    return-void

    .line 282
    :catch_0
    move-exception v0

    .line 283
    new-instance v1, Lcom/snapchat/android/analytics/framework/ErrorMetric;

    const-string v2, "Photo filter failed to load library"

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/ErrorMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->a(Ljava/lang/Throwable;)Lcom/snapchat/android/analytics/framework/ErrorMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->d()V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 5

    .prologue
    const/16 v4, 0x20

    const/4 v1, -0x1

    .line 76
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 73
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/util/PhotoEffectTask;->mHandler:Landroid/os/Handler;

    .line 77
    iput-object p2, p0, Lcom/snapchat/android/util/PhotoEffectTask;->mContext:Landroid/content/Context;

    .line 78
    if-nez p1, :cond_1

    .line 79
    iput v1, p0, Lcom/snapchat/android/util/PhotoEffectTask;->mHashcode:I

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 84
    const-string v0, "#"

    invoke-virtual {v2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_1
    iput v0, p0, Lcom/snapchat/android/util/PhotoEffectTask;->mHashcode:I

    .line 85
    iget v0, p0, Lcom/snapchat/android/util/PhotoEffectTask;->mHashcode:I

    if-ne v0, v1, :cond_0

    .line 86
    const-string v0, "..."

    invoke-virtual {v2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v1, :cond_4

    :goto_2
    iput v1, p0, Lcom/snapchat/android/util/PhotoEffectTask;->mHashcode:I

    goto :goto_0

    .line 84
    :cond_2
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-eq v3, v1, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    .line 86
    :cond_4
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    if-ne v0, v1, :cond_5

    const/4 v0, 0x0

    :cond_5
    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2
.end method

.method private varargs a([Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v0, 0x0

    .line 109
    aget-object v4, p1, v2

    .line 113
    iget v1, p0, Lcom/snapchat/android/util/PhotoEffectTask;->mHashcode:I

    sparse-switch v1, :sswitch_data_0

    .line 228
    :cond_0
    :goto_0
    return-object v0

    .line 116
    :sswitch_0
    const-string v1, "POPULAR"

    invoke-static {v1}, Lcom/snapchat/android/analytics/AnalyticsEvents;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :sswitch_1
    const-string v1, "HELLO_WORLD_FILTER"

    invoke-static {v1}, Lcom/snapchat/android/analytics/AnalyticsEvents;->b(Ljava/lang/String;)V

    .line 120
    iget-object v1, p0, Lcom/snapchat/android/util/PhotoEffectTask;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/snapchat/android/util/PhotoEffectTask$1;

    invoke-direct {v2, p0}, Lcom/snapchat/android/util/PhotoEffectTask$1;-><init>(Lcom/snapchat/android/util/PhotoEffectTask;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 129
    :sswitch_2
    const-string v1, "NO_FILTER"

    move v2, v3

    .line 208
    :goto_1
    if-eqz v4, :cond_0

    .line 210
    invoke-static {v1}, Lcom/snapchat/android/analytics/AnalyticsEvents;->b(Ljava/lang/String;)V

    .line 213
    if-ne v2, v3, :cond_1

    .line 214
    iget-object v1, p0, Lcom/snapchat/android/util/PhotoEffectTask;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/snapchat/android/util/PhotoEffectTask$2;

    invoke-direct {v2, p0}, Lcom/snapchat/android/util/PhotoEffectTask$2;-><init>(Lcom/snapchat/android/util/PhotoEffectTask;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 133
    :sswitch_3
    const-string v1, "B&W"

    goto :goto_1

    .line 136
    :sswitch_4
    const/4 v2, 0x1

    .line 137
    const-string v1, "SEPIA"

    goto :goto_1

    .line 140
    :sswitch_5
    const/4 v2, 0x2

    .line 141
    const-string v1, "INVERT"

    goto :goto_1

    .line 144
    :sswitch_6
    const/4 v2, 0x3

    .line 145
    const-string v1, "INSTASNAP"

    goto :goto_1

    .line 148
    :sswitch_7
    const/4 v2, 0x4

    .line 149
    const-string v1, "BULGE"

    goto :goto_1

    .line 152
    :sswitch_8
    const/4 v2, 0x5

    .line 153
    const-string v1, "PINCH"

    goto :goto_1

    .line 156
    :sswitch_9
    const/4 v2, 0x6

    .line 157
    const-string v1, "BLACK_HOLE"

    goto :goto_1

    .line 160
    :sswitch_a
    const/4 v2, 0x7

    .line 161
    const-string v1, "RADIOACTIVE"

    goto :goto_1

    .line 164
    :sswitch_b
    const/16 v2, 0x8

    .line 165
    const-string v1, "SKETCHY"

    goto :goto_1

    .line 168
    :sswitch_c
    const/16 v2, 0x9

    .line 169
    const-string v1, "MIRROR"

    goto :goto_1

    .line 172
    :sswitch_d
    const/16 v2, 0xa

    .line 173
    const-string v1, "SELECTIVE_COLOR"

    goto :goto_1

    .line 176
    :sswitch_e
    const/16 v2, 0xb

    .line 177
    const-string v1, "LIGHTEN"

    goto :goto_1

    .line 180
    :sswitch_f
    const/16 v2, 0xc

    .line 181
    const-string v1, "DARKEN"

    goto :goto_1

    .line 184
    :sswitch_10
    const/16 v2, 0xd

    .line 185
    const-string v1, "EQUALIZE"

    goto :goto_1

    .line 188
    :sswitch_11
    const/16 v2, 0xe

    .line 189
    const-string v1, "BLOOM"

    goto :goto_1

    .line 192
    :sswitch_12
    const/16 v2, 0xf

    .line 193
    const-string v1, "DANOZ"

    goto :goto_1

    .line 196
    :sswitch_13
    const/16 v2, 0x10

    .line 197
    const-string v1, "TONE_MAP"

    goto :goto_1

    .line 200
    :sswitch_14
    const/16 v2, 0x11

    .line 201
    const-string v1, "MISS_ETIKATE"

    goto :goto_1

    .line 223
    :cond_1
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v3}, Laur;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 226
    iget-object v1, p0, Lcom/snapchat/android/util/PhotoEffectTask;->mContext:Landroid/content/Context;

    invoke-static {v2, v4, v0, v1}, Lcom/snapchat/android/util/PhotoEffectTask;->a(ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 113
    :sswitch_data_0
    .sparse-switch
        -0x7f3b33c2 -> :sswitch_c
        -0x721abb03 -> :sswitch_0
        -0x714d5c0d -> :sswitch_d
        -0x5adf4a00 -> :sswitch_1
        -0x553eb51f -> :sswitch_14
        -0x4fcf0961 -> :sswitch_f
        -0x13a953f -> :sswitch_a
        0x174f3 -> :sswitch_3
        0x192f6 -> :sswitch_13
        0x1be6d25 -> :sswitch_6
        0x597c603 -> :sswitch_11
        0x59bd117 -> :sswitch_7
        0x5aef13c -> :sswitch_12
        0x65bacba -> :sswitch_8
        0x68429f6 -> :sswitch_4
        0xa2a543f -> :sswitch_e
        0x22a775a0 -> :sswitch_10
        0x36e70c35 -> :sswitch_5
        0x469dc479 -> :sswitch_2
        0x4f726d3f -> :sswitch_9
        0x58995095 -> :sswitch_b
    .end sparse-switch
.end method

.method public static a()V
    .locals 2

    .prologue
    .line 270
    :try_start_0
    invoke-static {}, Lcom/snapchat/android/util/PhotoEffectTask;->terminateNativeProcessing()V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    :cond_0
    return-void

    .line 271
    :catch_0
    move-exception v0

    .line 273
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    throw v0
.end method

.method public static a(ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 234
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-eq v0, v1, :cond_0

    .line 235
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported bitmap config: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v0, v1, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-eq v0, v1, :cond_1

    .line 238
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported bitmap config: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 241
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input bitmap recycled."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_2
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 244
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output bitmap recycled."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-eq v0, v1, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 247
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 251
    :cond_5
    const/16 v0, 0x11

    if-ne p0, v0, :cond_7

    .line 252
    const v0, 0x7f020172

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p3, v0, v1}, Laur;->a(Landroid/content/Context;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->f(Ljava/lang/String;)V

    .line 259
    :goto_0
    return-void

    .line 252
    :cond_6
    :try_start_1
    invoke-static {p1, v0, p2}, Lcom/snapchat/android/util/PhotoEffectTask;->nativeLookupTablePhotoEffect(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 254
    :cond_7
    invoke-static {p0, p1, p2}, Lcom/snapchat/android/util/PhotoEffectTask;->nativePhotoEffect(ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private static native nativeLookupTablePhotoEffect(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
.end method

.method private static native nativePhotoEffect(ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
.end method

.method private static native terminateNativeProcessing()V
.end method


# virtual methods
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    check-cast p1, [Landroid/graphics/Bitmap;

    invoke-direct {p0, p1}, Lcom/snapchat/android/util/PhotoEffectTask;->a([Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
