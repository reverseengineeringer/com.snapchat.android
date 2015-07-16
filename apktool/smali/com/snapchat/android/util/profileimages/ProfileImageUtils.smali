.class public final Lcom/snapchat/android/util/profileimages/ProfileImageUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageSize;,
        Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageType;
    }
.end annotation


# static fields
.field private static final COMPRESSION_QUALITY:I = 0x5a

.field private static final IMAGE_CHECKSUM_BUFFER_LENGTH:I = 0x8

.field private static final IMAGE_LAST_UPDATED_BUFFER_LENGTH:I = 0x8

.field private static final IMAGE_SIZE_BUFFER_LENGTH:I = 0x4

.field private static final IMAGE_USERNAME_BUFFER_LENGTH:I = 0xf

.field public static final NUMBER_OF_PROFILE_IMAGES:I = 0x5

.field public static final PROFILE_PICTURE_ANIMATION_DURATION_IN_MILLIS:I = 0xc8

.field public static final PROFILE_PICTURE_SCALE_FACTOR:D = 0.736

.field private static final TAG:Ljava/lang/String; = "ProfileImageUtils"

.field private static final sInstance:Lcom/snapchat/android/util/profileimages/ProfileImageUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/snapchat/android/util/profileimages/ProfileImageUtils;

    invoke-direct {v0}, Lcom/snapchat/android/util/profileimages/ProfileImageUtils;-><init>()V

    sput-object v0, Lcom/snapchat/android/util/profileimages/ProfileImageUtils;->sInstance:Lcom/snapchat/android/util/profileimages/ProfileImageUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 400
    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 80
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    :goto_0
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 87
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 88
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 89
    invoke-virtual {v0, p1, v4, v4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 90
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 91
    return-object p0

    .line 83
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 84
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    move-object p0, v0

    goto :goto_0
.end method

.method public static a()Lcom/snapchat/android/util/profileimages/ProfileImageUtils;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/snapchat/android/util/profileimages/ProfileImageUtils;->sInstance:Lcom/snapchat/android/util/profileimages/ProfileImageUtils;

    return-object v0
.end method

.method public static a(Laxn;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laxn;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 234
    invoke-virtual {p0, p1}, Laxn;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Laxn;->a(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_1

    .line 235
    :cond_0
    const/4 v0, 0x0

    .line 239
    :goto_0
    return-object v0

    .line 237
    :cond_1
    invoke-virtual {p0, p1}, Laxn;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 238
    invoke-static {v0}, Lcom/snapchat/android/util/profileimages/ProfileImageUtils;->a([B)Lorg/apache/commons/lang3/tuple/Pair;

    move-result-object v0

    .line 239
    invoke-virtual {v0}, Lorg/apache/commons/lang3/tuple/Pair;->getRight()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v3, v4

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    array-length v2, v2

    invoke-static {v1, v4, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    :cond_2
    move-object v0, v5

    goto :goto_0
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 372
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 373
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 374
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 375
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 376
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v0, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 377
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 378
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 380
    :cond_0
    return-object v2
.end method

.method private static a([B)Lorg/apache/commons/lang3/tuple/Pair;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lorg/apache/commons/lang3/tuple/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<[B>;>;"
        }
    .end annotation

    .prologue
    .line 143
    if-nez p0, :cond_0

    .line 144
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Exception deserializing profile media byte array: data is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 149
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v2

    .line 150
    const/4 v0, 0x5

    if-eq v2, v0, :cond_1

    .line 151
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "profile images - exception deserializing profile media byte array: invalid pics number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_1
    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 158
    const/4 v3, 0x0

    const/16 v4, 0x8

    invoke-virtual {v1, v0, v3, v4}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 159
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v0}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v3}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v4

    .line 161
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 162
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_4

    .line 163
    const/4 v6, 0x4

    new-array v6, v6, [B

    .line 164
    const/4 v7, 0x0

    const/4 v8, 0x4

    invoke-virtual {v1, v6, v7, v8}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 165
    new-instance v7, Ljava/math/BigInteger;

    invoke-direct {v7, v6}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    .line 166
    new-array v7, v6, [B

    .line 167
    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8, v6}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result v8

    .line 168
    if-eq v8, v6, :cond_2

    .line 169
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "profile images - exception deserializing profile media byte array: data corruption"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_2
    const/16 v6, 0x8

    new-array v6, v6, [B

    .line 176
    const/4 v8, 0x0

    const/16 v9, 0x8

    invoke-virtual {v1, v6, v8, v9}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 177
    new-instance v8, Ljava/util/zip/CRC32;

    invoke-direct {v8}, Ljava/util/zip/CRC32;-><init>()V

    .line 178
    invoke-virtual {v8, v7}, Ljava/util/zip/CRC32;->update([B)V

    .line 179
    invoke-virtual {v8}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v10

    new-instance v9, Ljava/math/BigInteger;

    invoke-direct {v9, v6}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v9}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v12

    cmp-long v6, v10, v12

    if-eqz v6, :cond_3

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "profile images - exception deserializing profile media byte array: data corruption, checksum : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " image index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 182
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "profile images - exception deserializing profile media byte array: data corruption, checksum : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " image index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 186
    :cond_3
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 189
    :cond_4
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0, v3}, Lorg/apache/commons/lang3/tuple/ImmutablePair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/tuple/ImmutablePair;

    move-result-object v0

    return-object v0
.end method

.method public static a(JLaxn;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 355
    invoke-static {}, Lbhp;->b()V

    .line 357
    monitor-enter p2

    .line 358
    :try_start_0
    invoke-static {}, Lakr;->A()J

    move-result-wide v2

    cmp-long v1, p0, v2

    if-gtz v1, :cond_0

    .line 359
    monitor-exit p2

    .line 368
    :goto_0
    return-void

    .line 361
    :cond_0
    invoke-static {p0, p1}, Lakr;->d(J)V

    .line 363
    :goto_1
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 364
    invoke-static {}, Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageType;->values()[Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageType;

    move-result-object v1

    aget-object v1, v1, v0

    .line 365
    invoke-virtual {v1}, Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Laxn;->c(Ljava/lang/String;)V

    .line 366
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1}, Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageType;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    const/4 v1, 0x1

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v1

    .line 363
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 368
    :cond_1
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a(Ljava/util/List;JLaxn;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;J",
            "Laxn;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 330
    invoke-static {}, Lbhp;->b()V

    .line 332
    monitor-enter p3

    .line 335
    :try_start_0
    invoke-static {}, Lakr;->A()J

    move-result-wide v2

    cmp-long v1, p1, v2

    if-gez v1, :cond_0

    .line 336
    monitor-exit p3

    .line 350
    :goto_0
    return-void

    .line 338
    :cond_0
    invoke-static {p1, p2}, Lakr;->d(J)V

    move v1, v0

    .line 339
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 340
    invoke-static {}, Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageType;->values()[Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageType;

    move-result-object v0

    aget-object v2, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    :try_start_1
    invoke-virtual {v2}, Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {p3, v3, v0}, Laxn;->a(Ljava/lang/String;[B)V

    .line 343
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v2}, Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageType;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v0, v3
    :try_end_1
    .catch Laxq; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 339
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 345
    :catch_0
    move-exception v0

    .line 346
    const/4 v3, 0x3

    :try_start_2
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v2}, Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageType;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4

    const/4 v2, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v2, 0x2

    aput-object v0, v3, v2

    goto :goto_2

    .line 350
    :catchall_0
    move-exception v0

    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    :try_start_3
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public static a([BLaxn;)V
    .locals 12

    .prologue
    .line 244
    invoke-static {}, Lbhp;->b()V

    .line 246
    if-nez p0, :cond_0

    .line 247
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Exception deserializing profile media byte array: data is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 252
    :goto_0
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    if-lez v0, :cond_5

    .line 254
    const/16 v0, 0xf

    new-array v0, v0, [B

    .line 255
    const/4 v2, 0x0

    const/16 v3, 0xf

    invoke-virtual {v1, v0, v2, v3}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 256
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 258
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 260
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v4

    .line 261
    const/4 v0, 0x5

    if-eq v4, v0, :cond_1

    .line 262
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "friends profile images - exception deserializing profile media byte array: invalid pics number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 267
    :cond_1
    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 270
    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 271
    const/4 v5, 0x0

    const/16 v6, 0x8

    invoke-virtual {v1, v0, v5, v6}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 272
    const/4 v5, 0x0

    const/16 v6, 0x8

    invoke-virtual {v3, v0, v5, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 275
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_4

    .line 277
    const/4 v5, 0x4

    new-array v5, v5, [B

    .line 278
    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-virtual {v1, v5, v6, v7}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 279
    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-virtual {v3, v5, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 280
    new-instance v6, Ljava/math/BigInteger;

    invoke-direct {v6, v5}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v6}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    .line 283
    new-array v6, v5, [B

    .line 284
    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7, v5}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result v7

    .line 285
    if-eq v7, v5, :cond_2

    .line 286
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "friends profile images - exception deserializing profile media byte array: data corruption"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 290
    :cond_2
    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 293
    const/16 v5, 0x8

    new-array v5, v5, [B

    .line 294
    const/4 v7, 0x0

    const/16 v8, 0x8

    invoke-virtual {v1, v5, v7, v8}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 295
    new-instance v7, Ljava/util/zip/CRC32;

    invoke-direct {v7}, Ljava/util/zip/CRC32;-><init>()V

    .line 296
    invoke-virtual {v7, v6}, Ljava/util/zip/CRC32;->update([B)V

    .line 297
    invoke-virtual {v7}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v8

    new-instance v6, Ljava/math/BigInteger;

    invoke-direct {v6, v5}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v6}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v10

    cmp-long v6, v8, v10

    if-eqz v6, :cond_3

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "friends profile images - exception deserializing image byte array: data corruption, checksum : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " image index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 300
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "friends profile images - exception deserializing image byte array: data corruption checksum : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " image index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 304
    :cond_3
    const/4 v6, 0x0

    const/16 v7, 0x8

    invoke-virtual {v3, v5, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 275
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 306
    :cond_4
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 309
    :try_start_0
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 310
    invoke-virtual {p1, v2, v0}, Laxn;->a(Ljava/lang/String;[B)V
    :try_end_0
    .catch Laxq; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    goto/16 :goto_0

    .line 312
    :catch_0
    move-exception v0

    .line 313
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "friends profile images -  caching failed for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " with error:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 315
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    throw v0

    .line 317
    :cond_5
    return-void
.end method

.method public static a(Laxn;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 193
    move v1, v0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    .line 194
    invoke-static {}, Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageType;->values()[Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageType;

    move-result-object v2

    aget-object v2, v2, v1

    .line 195
    invoke-virtual {v2}, Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Laxn;->d(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 199
    :goto_1
    return v0

    .line 193
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 199
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static a(Ljava/util/List;J)[B
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;J)[B"
        }
    .end annotation

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x5

    .line 106
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, v6, :cond_1

    .line 107
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "profile images - exception serializing profile media byte array with invalid total number of profile pics."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 112
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    int-to-byte v0, v0

    .line 113
    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 114
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 116
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v6, :cond_2

    .line 117
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 118
    array-length v3, v0

    .line 119
    const/4 v4, 0x4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 120
    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 121
    new-instance v3, Ljava/util/zip/CRC32;

    invoke-direct {v3}, Ljava/util/zip/CRC32;-><init>()V

    .line 122
    invoke-virtual {v3, v0}, Ljava/util/zip/CRC32;->update([B)V

    .line 123
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v3}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 116
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 125
    :cond_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 126
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 127
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 128
    return-object v0
.end method

.method public static b(Laxn;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laxn;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 204
    invoke-static {}, Lbhp;->b()V

    .line 206
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 207
    :goto_0
    const/4 v3, 0x5

    if-ge v0, v3, :cond_0

    .line 208
    invoke-static {}, Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageType;->values()[Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageType;

    move-result-object v3

    aget-object v3, v3, v0

    .line 209
    invoke-virtual {v3}, Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Laxn;->a(Ljava/lang/String;)[B

    move-result-object v4

    .line 210
    array-length v5, v4

    invoke-static {v4, v1, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 211
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageType;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v1

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v6

    .line 207
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 214
    :cond_0
    new-array v0, v6, [Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    .line 215
    return-object v2
.end method

.method public static b([BLaxn;)V
    .locals 4

    .prologue
    .line 321
    invoke-static {p0}, Lcom/snapchat/android/util/profileimages/ProfileImageUtils;->a([B)Lorg/apache/commons/lang3/tuple/Pair;

    move-result-object v1

    .line 322
    invoke-virtual {v1}, Lorg/apache/commons/lang3/tuple/Pair;->getRight()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1}, Lorg/apache/commons/lang3/tuple/Pair;->getLeft()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v2, v3, p1}, Lcom/snapchat/android/util/profileimages/ProfileImageUtils;->a(Ljava/util/List;JLaxn;)V

    .line 323
    return-void
.end method

.method public static c(Laxn;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laxn;",
            ")",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 220
    invoke-static {}, Lbhp;->b()V

    .line 222
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 223
    :goto_0
    const/4 v3, 0x5

    if-ge v0, v3, :cond_0

    .line 224
    invoke-static {}, Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageType;->values()[Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageType;

    move-result-object v3

    aget-object v3, v3, v0

    .line 225
    invoke-virtual {v3}, Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Laxn;->a(Ljava/lang/String;)[B

    move-result-object v4

    .line 226
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageType;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v1

    array-length v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v6

    .line 227
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 229
    :cond_0
    new-array v0, v6, [Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    .line 230
    return-object v2
.end method
