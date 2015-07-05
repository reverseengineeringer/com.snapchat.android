.class final Lcom/snapchat/android/util/cache/CacheType$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/util/cache/CacheType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/util/cache/CacheType$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES$4bc5adf1:[I

.field public static final enum BLOB$17e89516:I

.field public static final enum DIRECTORY$17e89516:I

.field public static final enum IMAGE$17e89516:I

.field public static final enum VIDEO$17e89516:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v0, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 45
    sput v3, Lcom/snapchat/android/util/cache/CacheType$a;->VIDEO$17e89516:I

    .line 46
    sput v4, Lcom/snapchat/android/util/cache/CacheType$a;->IMAGE$17e89516:I

    .line 47
    sput v5, Lcom/snapchat/android/util/cache/CacheType$a;->BLOB$17e89516:I

    .line 48
    sput v0, Lcom/snapchat/android/util/cache/CacheType$a;->DIRECTORY$17e89516:I

    .line 44
    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/snapchat/android/util/cache/CacheType$a;->VIDEO$17e89516:I

    aput v2, v0, v1

    sget v1, Lcom/snapchat/android/util/cache/CacheType$a;->IMAGE$17e89516:I

    aput v1, v0, v3

    sget v1, Lcom/snapchat/android/util/cache/CacheType$a;->BLOB$17e89516:I

    aput v1, v0, v4

    sget v1, Lcom/snapchat/android/util/cache/CacheType$a;->DIRECTORY$17e89516:I

    aput v1, v0, v5

    sput-object v0, Lcom/snapchat/android/util/cache/CacheType$a;->$VALUES$4bc5adf1:[I

    return-void
.end method

.method public static a()[I
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/snapchat/android/util/cache/CacheType$a;->$VALUES$4bc5adf1:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
