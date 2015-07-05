.class final Lcom/snapchat/android/util/cache/CacheType$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/util/cache/CacheType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/util/cache/CacheType$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES$12f9c39f:[I

.field public static final enum EXTERNAL_ONLY$105f8726:I

.field public static final enum EXTERNAL_PREFERRED$105f8726:I

.field public static final enum INTERNAL$105f8726:I

.field public static final enum INTERNAL_PREFERRED$105f8726:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v0, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 52
    sput v3, Lcom/snapchat/android/util/cache/CacheType$b;->EXTERNAL_ONLY$105f8726:I

    .line 53
    sput v4, Lcom/snapchat/android/util/cache/CacheType$b;->EXTERNAL_PREFERRED$105f8726:I

    .line 54
    sput v5, Lcom/snapchat/android/util/cache/CacheType$b;->INTERNAL$105f8726:I

    .line 55
    sput v0, Lcom/snapchat/android/util/cache/CacheType$b;->INTERNAL_PREFERRED$105f8726:I

    .line 51
    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/snapchat/android/util/cache/CacheType$b;->EXTERNAL_ONLY$105f8726:I

    aput v2, v0, v1

    sget v1, Lcom/snapchat/android/util/cache/CacheType$b;->EXTERNAL_PREFERRED$105f8726:I

    aput v1, v0, v3

    sget v1, Lcom/snapchat/android/util/cache/CacheType$b;->INTERNAL$105f8726:I

    aput v1, v0, v4

    sget v1, Lcom/snapchat/android/util/cache/CacheType$b;->INTERNAL_PREFERRED$105f8726:I

    aput v1, v0, v5

    sput-object v0, Lcom/snapchat/android/util/cache/CacheType$b;->$VALUES$12f9c39f:[I

    return-void
.end method
